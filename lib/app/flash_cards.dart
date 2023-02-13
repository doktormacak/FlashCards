import 'package:flash_cards/consts/colors.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class FlashCards extends StatelessWidget {
  const FlashCards({super.key});

  @override
  Widget build(BuildContext context) {
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
      // routerConfig: router,
    );
  }
}
