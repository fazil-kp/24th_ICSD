import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icsd/helper/custom_scaffold.dart';
import 'package:icsd/routes/route_list.dart';

import '../config/constants.dart';

final GoRouter routeX = GoRouter(
  initialLocation: "/",
  redirectLimit: 3,
  errorBuilder: (context, state) {
    return CustomScaffold(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => context.go("/"), child: const Text("Back")),
          ],
        ),
      ),
    );
  },
  navigatorKey: ConstanceData.navigatorKey,
  routes: _buildRoutes(),
);

List<RouteBase> _buildRoutes() {
  return [
    GoRoute(
      path: '/',
      parentNavigatorKey: ConstanceData.navigatorKey,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child),
        child: const CustomScaffold(),
      ),
      routes: [
        ..._mainRoutes(),
      ],
    ),
  ];
}

Future<bool> login() async {
  return true;
}

List<GoRoute> _mainRoutes() {
  List<GoRoute> mainGoRoutes = [];

  for (var route in MainRoute.mainRouteList) {
    mainGoRoutes.add(
      GoRoute(
        path: route.routeName!,
        name: route.routeName,
        pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: CurveTween(curve: Curves.easeInOutSine).animate(animation), child: child);
          },
          child: route.widget!,
        ),
      ),
    );
  }

  return mainGoRoutes;
}
