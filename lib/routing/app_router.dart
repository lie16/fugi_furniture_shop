
import 'package:fugi_furniture_shop/feature/home/home.dart';
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
      builder: (context, state) => const MyHomePage(),
      // routes: [
      //   GoRoute(
      //     path: 'visit_new_mitra',
      //     name: AppRoute.home.name,
      //     pageBuilder: (context, state) => NoTransitionPage<void>(
      //       key: state.pageKey,
      //       child: const MyHomePage(),
      //     ),
      //   ),
      // ],
    ),
];