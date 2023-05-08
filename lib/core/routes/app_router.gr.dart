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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../features/account/presentation/pages/account_page.dart' as _i7;
import '../../features/category/presentation/pages/category_page.dart' as _i6;
import '../../features/dashboard/presentation/pages/dashboard_page.dart' as _i5;
import '../../features/home/presentation/pages/home_page.dart' as _i4;
import '../../features/login/presentation/pages/login_page.dart' as _i1;
import '../../features/main/presentation/pages/main_page.dart' as _i3;
import '../../features/register/presentation/pages/register_page.dart' as _i2;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
        opaque: true,
      );
    },
    RegisterPageRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterPage(),
        opaque: true,
      );
    },
    MainPageRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
        opaque: true,
      );
    },
    HomePageRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
        opaque: true,
      );
    },
    DashboardPageRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardPage(),
        opaque: true,
      );
    },
    CategoryPageRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.CategoryPage(),
        opaque: true,
      );
    },
    AccountPageRoute.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.AccountPage(),
        opaque: true,
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          LoginPageRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          RegisterPageRoute.name,
          path: '/register-page',
        ),
        _i8.RouteConfig(
          MainPageRoute.name,
          path: '/main-page',
        ),
        _i8.RouteConfig(
          HomePageRoute.name,
          path: '/home-page',
        ),
        _i8.RouteConfig(
          DashboardPageRoute.name,
          path: '/dashboard-page',
        ),
        _i8.RouteConfig(
          CategoryPageRoute.name,
          path: '/category-page',
        ),
        _i8.RouteConfig(
          AccountPageRoute.name,
          path: '/account-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i8.PageRouteInfo<void> {
  const LoginPageRoute()
      : super(
          LoginPageRoute.name,
          path: '/',
        );

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterPageRoute extends _i8.PageRouteInfo<void> {
  const RegisterPageRoute()
      : super(
          RegisterPageRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterPageRoute';
}

/// generated route for
/// [_i3.MainPage]
class MainPageRoute extends _i8.PageRouteInfo<void> {
  const MainPageRoute()
      : super(
          MainPageRoute.name,
          path: '/main-page',
        );

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i8.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.DashboardPage]
class DashboardPageRoute extends _i8.PageRouteInfo<void> {
  const DashboardPageRoute()
      : super(
          DashboardPageRoute.name,
          path: '/dashboard-page',
        );

  static const String name = 'DashboardPageRoute';
}

/// generated route for
/// [_i6.CategoryPage]
class CategoryPageRoute extends _i8.PageRouteInfo<void> {
  const CategoryPageRoute()
      : super(
          CategoryPageRoute.name,
          path: '/category-page',
        );

  static const String name = 'CategoryPageRoute';
}

/// generated route for
/// [_i7.AccountPage]
class AccountPageRoute extends _i8.PageRouteInfo<void> {
  const AccountPageRoute()
      : super(
          AccountPageRoute.name,
          path: '/account-page',
        );

  static const String name = 'AccountPageRoute';
}
