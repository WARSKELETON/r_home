// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../home/home_page.dart' as _i4;
import '../profile/profile_page.dart' as _i5;
import '../profile/transaction_history_page.dart' as _i7;
import '../profile/wallet_page.dart' as _i6;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i8;

class MyRouter extends _i9.RootStackRouter {
  MyRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    ProfilePageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.WalletPage(),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryPageRouteArgs>();
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: _i7.TransactionHistoryPage(
              key: args.key, transactions: args.transactions),
          transitionsBuilder: _i9.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashPageRoute.name, path: '/'),
        _i9.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i9.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i9.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i9.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i9.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i9.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i9.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i9.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i9.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i9.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i9.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.ProfilePage]
class ProfilePageRoute extends _i9.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i6.WalletPage]
class WalletPageRoute extends _i9.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i7.TransactionHistoryPage]
class TransactionHistoryPageRoute
    extends _i9.PageRouteInfo<TransactionHistoryPageRouteArgs> {
  TransactionHistoryPageRoute({_i10.Key? key, required List<int> transactions})
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page',
            args: TransactionHistoryPageRouteArgs(
                key: key, transactions: transactions));

  static const String name = 'TransactionHistoryPageRoute';
}

class TransactionHistoryPageRouteArgs {
  const TransactionHistoryPageRouteArgs({this.key, required this.transactions});

  final _i10.Key? key;

  final List<int> transactions;

  @override
  String toString() {
    return 'TransactionHistoryPageRouteArgs{key: $key, transactions: $transactions}';
  }
}

/// generated route for
/// [_i8.TestPage]
class TestPageRoute extends _i9.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
