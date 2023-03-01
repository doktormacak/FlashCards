import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../routing/router_notifier.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toggleLogIn = ref.read(routerNotifierProvider);
    return Scaffold(
      body: Column(
        children: [
          const Text('Login Screen'),
          TextButton(
            child: const Text("Login"),
            onPressed: () {
              toggleLogIn.isLoggedIn = true;
            },
          ),
        ],
      ),
    );
  }
}
