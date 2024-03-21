import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/features/view/home_view.dart';

class Routes {
  Routes._();
  static const home = '/home';
}

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: Routes.home,
      routes: [
        GoRoute(
          path: Routes.home,
          name: Routes.home,
          builder: (_, __) => const HomeView(),
        ),
      ],
    );
  },
);
