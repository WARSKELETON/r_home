// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../../domain/homes/home.dart' as _i15;
import '../home/home_page.dart' as _i4;
import '../my_homes/my_home_page.dart' as _i8;
import '../my_homes/my_homes_form.dart' as _i6;
import '../my_homes/my_homes_page.dart' as _i5;
import '../profile/profile_page.dart' as _i7;
import '../profile/send_tokens_page.dart' as _i11;
import '../profile/transaction_history_page.dart' as _i10;
import '../profile/wallet_page.dart' as _i9;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i12;

class MyRouter extends _i13.RootStackRouter {
  MyRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesPageRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.MyHomesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomesFormRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.MyHomesForm(
              key: args.key, formAction: args.formAction, home: args.home),
          fullscreenDialog: true);
    },
    ProfilePageRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomePageRouteArgs>();
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.MyHomePage(key: args.key, home: args.home),
          transitionsBuilder: _i13.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.WalletPage(),
          transitionsBuilder: _i13.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryPageRouteArgs>();
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i10.TransactionHistoryPage(
              key: args.key, transactions: args.transactions),
          transitionsBuilder: _i13.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    SendTokensPageRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.SendTokensPage(),
          transitionsBuilder: _i13.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(SplashPageRoute.name, path: '/'),
        _i13.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i13.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i13.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i13.RouteConfig(MyHomesPageRoute.name, path: '/my-homes-page'),
        _i13.RouteConfig(MyHomesFormRoute.name, path: '/my-homes-form'),
        _i13.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i13.RouteConfig(MyHomePageRoute.name, path: '/my-home-page'),
        _i13.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i13.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i13.RouteConfig(SendTokensPageRoute.name, path: '/send-tokens-page'),
        _i13.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i13.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i13.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i13.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i13.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.MyHomesPage]
class MyHomesPageRoute extends _i13.PageRouteInfo<void> {
  const MyHomesPageRoute()
      : super(MyHomesPageRoute.name, path: '/my-homes-page');

  static const String name = 'MyHomesPageRoute';
}

/// generated route for
/// [_i6.MyHomesForm]
class MyHomesFormRoute extends _i13.PageRouteInfo<MyHomesFormRouteArgs> {
  MyHomesFormRoute(
      {_i14.Key? key, required _i6.FormAction formAction, _i15.Home? home})
      : super(MyHomesFormRoute.name,
            path: '/my-homes-form',
            args: MyHomesFormRouteArgs(
                key: key, formAction: formAction, home: home));

  static const String name = 'MyHomesFormRoute';
}

class MyHomesFormRouteArgs {
  const MyHomesFormRouteArgs({this.key, required this.formAction, this.home});

  final _i14.Key? key;

  final _i6.FormAction formAction;

  final _i15.Home? home;

  @override
  String toString() {
    return 'MyHomesFormRouteArgs{key: $key, formAction: $formAction, home: $home}';
  }
}

/// generated route for
/// [_i7.ProfilePage]
class ProfilePageRoute extends _i13.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i8.MyHomePage]
class MyHomePageRoute extends _i13.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({_i14.Key? key, required _i15.Home home})
      : super(MyHomePageRoute.name,
            path: '/my-home-page',
            args: MyHomePageRouteArgs(key: key, home: home));

  static const String name = 'MyHomePageRoute';
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({this.key, required this.home});

  final _i14.Key? key;

  final _i15.Home home;

  @override
  String toString() {
    return 'MyHomePageRouteArgs{key: $key, home: $home}';
  }
}

/// generated route for
/// [_i9.WalletPage]
class WalletPageRoute extends _i13.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i10.TransactionHistoryPage]
class TransactionHistoryPageRoute
    extends _i13.PageRouteInfo<TransactionHistoryPageRouteArgs> {
  TransactionHistoryPageRoute({_i14.Key? key, required List<int> transactions})
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page',
            args: TransactionHistoryPageRouteArgs(
                key: key, transactions: transactions));

  static const String name = 'TransactionHistoryPageRoute';
}

class TransactionHistoryPageRouteArgs {
  const TransactionHistoryPageRouteArgs({this.key, required this.transactions});

  final _i14.Key? key;

  final List<int> transactions;

  @override
  String toString() {
    return 'TransactionHistoryPageRouteArgs{key: $key, transactions: $transactions}';
  }
}

/// generated route for
/// [_i11.SendTokensPage]
class SendTokensPageRoute extends _i13.PageRouteInfo<void> {
  const SendTokensPageRoute()
      : super(SendTokensPageRoute.name, path: '/send-tokens-page');

  static const String name = 'SendTokensPageRoute';
}

/// generated route for
/// [_i12.TestPage]
class TestPageRoute extends _i13.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
