import 'package:flash_cards/app/flash_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loggy/flutter_loggy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loggy/loggy.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  _initLoggy();
  runApp(
    const ProviderScope(
      child: FlashCards(),
    ),
  );
}

void _initLoggy() {
  Loggy.initLoggy(
    logPrinter: StreamPrinter(
      const PrettyDeveloperPrinter(),
    ),
    logOptions: const LogOptions(
      LogLevel.all,
      stackTraceLevel: LogLevel.error,
    ),
  );
}
