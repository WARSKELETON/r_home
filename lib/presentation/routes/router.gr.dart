// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../../domain/homes/home.dart' as _i16;
import '../home/home_page.dart' as _i4;
import '../my_homes/my_home_page.dart' as _i8;
import '../my_homes/my_homes_form.dart' as _i6;
import '../my_homes/my_homes_page.dart' as _i5;
import '../profile/my_local_activities_page.dart' as _i10;
import '../profile/profile_page.dart' as _i7;
import '../profile/send_tokens_page.dart' as _i12;
import '../profile/transaction_history_page.dart' as _i11;
import '../profile/wallet_page.dart' as _i9;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i13;

class MyRouter extends _i14.RootStackRouter {
  MyRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesPageRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.MyHomesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomesFormRouteArgs>();
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.MyHomesForm(
              key: args.key, formAction: args.formAction, home: args.home),
          fullscreenDialog: true);
    },
    ProfilePageRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomePageRouteArgs>();
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.MyHomePage(key: args.key, home: args.home),
          transitionsBuilder: _i14.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.WalletPage(),
          transitionsBuilder: _i14.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivitiesPageRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.MyLocalActivitiesPage(),
          transitionsBuilder: _i14.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryPageRouteArgs>();
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: _i11.TransactionHistoryPage(
              key: args.key, transactions: args.transactions),
          transitionsBuilder: _i14.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    SendTokensPageRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.SendTokensPage(),
          transitionsBuilder: _i14.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i14.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(SplashPageRoute.name, path: '/'),
        _i14.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i14.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i14.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i14.RouteConfig(MyHomesPageRoute.name, path: '/my-homes-page'),
        _i14.RouteConfig(MyHomesFormRoute.name, path: '/my-homes-form'),
        _i14.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i14.RouteConfig(MyHomePageRoute.name, path: '/my-home-page'),
        _i14.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i14.RouteConfig(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page'),
        _i14.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i14.RouteConfig(SendTokensPageRoute.name, path: '/send-tokens-page'),
        _i14.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i14.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i14.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i14.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i14.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.MyHomesPage]
class MyHomesPageRoute extends _i14.PageRouteInfo<void> {
  const MyHomesPageRoute()
      : super(MyHomesPageRoute.name, path: '/my-homes-page');

  static const String name = 'MyHomesPageRoute';
}

/// generated route for
/// [_i6.MyHomesForm]
class MyHomesFormRoute extends _i14.PageRouteInfo<MyHomesFormRouteArgs> {
  MyHomesFormRoute(
      {_i15.Key? key, required _i6.FormAction formAction, _i16.Home? home})
      : super(MyHomesFormRoute.name,
            path: '/my-homes-form',
            args: MyHomesFormRouteArgs(
                key: key, formAction: formAction, home: home));

  static const String name = 'MyHomesFormRoute';
}

class MyHomesFormRouteArgs {
  const MyHomesFormRouteArgs({this.key, required this.formAction, this.home});

  final _i15.Key? key;

  final _i6.FormAction formAction;

  final _i16.Home? home;

  @override
  String toString() {
    return 'MyHomesFormRouteArgs{key: $key, formAction: $formAction, home: $home}';
  }
}

/// generated route for
/// [_i7.ProfilePage]
class ProfilePageRoute extends _i14.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i8.MyHomePage]
class MyHomePageRoute extends _i14.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({_i15.Key? key, required _i16.Home home})
      : super(MyHomePageRoute.name,
            path: '/my-home-page',
            args: MyHomePageRouteArgs(key: key, home: home));

  static const String name = 'MyHomePageRoute';
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({this.key, required this.home});

  final _i15.Key? key;

  final _i16.Home home;

  @override
  String toString() {
    return 'MyHomePageRouteArgs{key: $key, home: $home}';
  }
}

/// generated route for
/// [_i9.WalletPage]
class WalletPageRoute extends _i14.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i10.MyLocalActivitiesPage]
class MyLocalActivitiesPageRoute extends _i14.PageRouteInfo<void> {
  const MyLocalActivitiesPageRoute()
      : super(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page');

  static const String name = 'MyLocalActivitiesPageRoute';
}

/// generated route for
/// [_i11.TransactionHistoryPage]
class TransactionHistoryPageRoute
    extends _i14.PageRouteInfo<TransactionHistoryPageRouteArgs> {
  TransactionHistoryPageRoute({_i15.Key? key, required List<int> transactions})
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page',
            args: TransactionHistoryPageRouteArgs(
                key: key, transactions: transactions));

  static const String name = 'TransactionHistoryPageRoute';
}

class TransactionHistoryPageRouteArgs {
  const TransactionHistoryPageRouteArgs({this.key, required this.transactions});

  final _i15.Key? key;

  final List<int> transactions;

  @override
  String toString() {
    return 'TransactionHistoryPageRouteArgs{key: $key, transactions: $transactions}';
  }
}

/// generated route for
/// [_i12.SendTokensPage]
class SendTokensPageRoute extends _i14.PageRouteInfo<void> {
  const SendTokensPageRoute()
      : super(SendTokensPageRoute.name, path: '/send-tokens-page');

  static const String name = 'SendTokensPageRoute';
}

/// generated route for
/// [_i13.TestPage]
class TestPageRoute extends _i14.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
