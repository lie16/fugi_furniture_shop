
import 'package:fugi_furniture_shop/feature/home/my_home_screen.dart';
import 'package:fugi_furniture_shop/feature/home/product/my_detail_product.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  detailProduct,
}

final router = GoRouter(
  initialLocation: '/',
  routerNeglect: true,
  routes: routes
);

List<RouteBase> routes = [
  GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const MyHomeScreen(),
      routes: [
        GoRoute(
          path: 'detail_product',
          name: AppRoute.detailProduct.name,
          pageBuilder: (context, state) => NoTransitionPage<void>(
            key: state.pageKey,
            child: const MyDetailProduct(),
          ),
        ),
      ],
    ),
];