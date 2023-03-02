import 'package:flash_cards/routing/router_notifier.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../features/auth/presentation/login_screen.dart';
import '../features/folders/presentation/widgets/folders_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final notifier = ref.watch(routerNotifierProvider);

  return GoRouter(
    initialLocation: '/',
    refreshListenable: notifier,
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) => notifier.isLoggedIn ? '/home' : '/login',
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const FoldersScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginScreen(),
      ),
    ],
  );
});
