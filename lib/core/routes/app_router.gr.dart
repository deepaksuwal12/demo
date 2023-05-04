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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../features/dashboard/presentation/pages/dashboard_page.dart' as _i3;
import '../../features/login/presentation/pages/login_page.dart' as _i1;
import '../../features/register/presentation/pages/register_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
        opaque: true,
      );
    },
    RegisterPageRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterPage(),
        opaque: true,
      );
    },
    DashboardPageRoute.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardPage(),
        opaque: true,
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          LoginPageRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          RegisterPageRoute.name,
          path: '/register-page',
        ),
        _i4.RouteConfig(
          DashboardPageRoute.name,
          path: '/dashboard-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i4.PageRouteInfo<void> {
  const LoginPageRoute()
      : super(
          LoginPageRoute.name,
          path: '/',
        );

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterPageRoute extends _i4.PageRouteInfo<void> {
  const RegisterPageRoute()
      : super(
          RegisterPageRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterPageRoute';
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardPageRoute extends _i4.PageRouteInfo<void> {
  const DashboardPageRoute()
      : super(
          DashboardPageRoute.name,
          path: '/dashboard-page',
        );

  static const String name = 'DashboardPageRoute';
}
