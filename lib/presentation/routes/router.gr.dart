// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../sign_in/sign_in_page.dart' as _i1;
import '../splash/splash_page.dart' as _i2;
import '../splash/test_page.dart' as _i3;

class MyRouter extends _i4.RootStackRouter {
  MyRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SignInPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignInPage());
    },
    SplashPageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.SplashPage(),
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SignInPageRoute.name, path: '/'),
        _i4.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i4.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SignInPage]
class SignInPageRoute extends _i4.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashPageRoute extends _i4.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i3.TestPage]
class TestPageRoute extends _i4.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
