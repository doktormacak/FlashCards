import 'package:flash_cards/consts/colors.dart';
import 'package:flash_cards/routing/router.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FlashCards extends ConsumerWidget {
  const FlashCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.from(
        colorScheme: flashCardsTheme,
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
