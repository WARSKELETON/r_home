// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../home/home_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i4;

class MyRouter extends _i5.RootStackRouter {
  MyRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    HomePageRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashPageRoute.name, path: '/'),
        _i5.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i5.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i5.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i5.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i5.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.TestPage]
class TestPageRoute extends _i5.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
