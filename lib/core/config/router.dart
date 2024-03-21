import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rijksmuseum_app/features/art_item_detail/view/art_item_detail_view.dart';
import 'package:rijksmuseum_app/features/home/view/home_view.dart';

class Routes {
  Routes._();
  static const home = '/home';
  static const artItemDetail = '/artItemDetail';
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
        GoRoute(
          path: '${Routes.artItemDetail}/:id',
          name: Routes.artItemDetail,
          builder: (context, state) {
            final itemId = state.pathParameters['id']!;
            return ArtItemDetailView(itemId: itemId);
          },
        )
      ],
    );
  },
);
