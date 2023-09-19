import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class Router extends $Router {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LandingRouteView.page, initial: true),
      ];
}
