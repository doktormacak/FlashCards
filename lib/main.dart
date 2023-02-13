import 'package:flash_cards/app/flash_cards.dart';
import 'package:flash_cards/app/inject_dependencies.dart' as app;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

main() {
  app.injectDependencies();
  runApp(
    const ProviderScope(
      child: FlashCards(),
    ),
  );
}
