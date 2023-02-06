import 'package:flash_cards/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Supabase.initialize(
    url: 'https://xyzcompany.supabase.co',
    anonKey: 'public-anon-key',
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: FlexThemeData.light(
        scheme: FlexScheme.wasabi,
        useMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        scheme: FlexScheme.wasabi,
      ),
      routerConfig: router,
    );
  }
}
