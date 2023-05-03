// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../features/dashboard/presentation/pages/dashboard_page.dart' as _i2;
import '../../features/login/presentation/pages/login_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
        opaque: true,
      );
    },
    DashboardPageRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
        opaque: true,
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          LoginPageRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          DashboardPageRoute.name,
          path: '/dashboard-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i3.PageRouteInfo<void> {
  const LoginPageRoute()
      : super(
          LoginPageRoute.name,
          path: '/',
        );

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardPageRoute extends _i3.PageRouteInfo<void> {
  const DashboardPageRoute()
      : super(
          DashboardPageRoute.name,
          path: '/dashboard-page',
        );

  static const String name = 'DashboardPageRoute';
}
