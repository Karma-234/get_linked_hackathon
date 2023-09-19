// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:get_linked_hackathon/views/landing_page/landing_page.dart'
    as _i1;

abstract class $Router extends _i2.RootStackRouter {
  $Router({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LandingRouteView.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LandingPageView(),
      );
    }
  };
}

/// generated route for
/// [_i1.LandingPageView]
class LandingRouteView extends _i2.PageRouteInfo<void> {
  const LandingRouteView({List<_i2.PageRouteInfo>? children})
      : super(
          LandingRouteView.name,
          initialChildren: children,
        );

  static const String name = 'LandingRouteView';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
