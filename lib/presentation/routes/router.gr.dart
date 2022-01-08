// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../../domain/homes/home.dart' as _i17;
import '../home/home_page.dart' as _i4;
import '../my_homes/my_home_details_page.dart' as _i8;
import '../my_homes/my_homes_page.dart' as _i5;
import '../my_homes_form/my_homes_form.dart' as _i6;
import '../my_local_activities/my_local_activities_details_page.dart' as _i9;
import '../my_local_activities/my_local_activities_page.dart' as _i11;
import '../profile/profile_page.dart' as _i7;
import '../profile/send_tokens_page.dart' as _i13;
import '../profile/transaction_history_page.dart' as _i12;
import '../profile/wallet_page.dart' as _i10;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i14;

class MyRouter extends _i15.RootStackRouter {
  MyRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesPageRoute.name: (routeData) {
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.MyHomesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomesFormRouteArgs>(
          orElse: () => const MyHomesFormRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.MyHomesForm(key: args.key, editedHome: args.editedHome),
          fullscreenDialog: true);
    },
    ProfilePageRoute.name: (routeData) {
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeDetailsPageRouteArgs>();
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.MyHomeDetailsPage(key: args.key, homeUuid: args.homeUuid),
          transitionsBuilder: _i15.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivityDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivityDetailsPageRouteArgs>();
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: _i9.MyLocalActivityDetailsPage(
              key: args.key, localActivityUuid: args.localActivityUuid),
          transitionsBuilder: _i15.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.WalletPage(),
          transitionsBuilder: _i15.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivitiesPageRoute.name: (routeData) {
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.MyLocalActivitiesPage(),
          transitionsBuilder: _i15.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryPageRouteArgs>();
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: _i12.TransactionHistoryPage(
              key: args.key, transactions: args.transactions),
          transitionsBuilder: _i15.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    SendTokensPageRoute.name: (routeData) {
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.SendTokensPage(),
          transitionsBuilder: _i15.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i15.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(SplashPageRoute.name, path: '/'),
        _i15.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i15.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i15.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i15.RouteConfig(MyHomesPageRoute.name, path: '/my-homes-page'),
        _i15.RouteConfig(MyHomesFormRoute.name, path: '/my-homes-form'),
        _i15.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i15.RouteConfig(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page'),
        _i15.RouteConfig(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page'),
        _i15.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i15.RouteConfig(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page'),
        _i15.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i15.RouteConfig(SendTokensPageRoute.name, path: '/send-tokens-page'),
        _i15.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i15.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i15.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i15.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i15.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.MyHomesPage]
class MyHomesPageRoute extends _i15.PageRouteInfo<void> {
  const MyHomesPageRoute()
      : super(MyHomesPageRoute.name, path: '/my-homes-page');

  static const String name = 'MyHomesPageRoute';
}

/// generated route for
/// [_i6.MyHomesForm]
class MyHomesFormRoute extends _i15.PageRouteInfo<MyHomesFormRouteArgs> {
  MyHomesFormRoute({_i16.Key? key, _i17.Home? editedHome})
      : super(MyHomesFormRoute.name,
            path: '/my-homes-form',
            args: MyHomesFormRouteArgs(key: key, editedHome: editedHome));

  static const String name = 'MyHomesFormRoute';
}

class MyHomesFormRouteArgs {
  const MyHomesFormRouteArgs({this.key, this.editedHome});

  final _i16.Key? key;

  final _i17.Home? editedHome;

  @override
  String toString() {
    return 'MyHomesFormRouteArgs{key: $key, editedHome: $editedHome}';
  }
}

/// generated route for
/// [_i7.ProfilePage]
class ProfilePageRoute extends _i15.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i8.MyHomeDetailsPage]
class MyHomeDetailsPageRoute
    extends _i15.PageRouteInfo<MyHomeDetailsPageRouteArgs> {
  MyHomeDetailsPageRoute({_i16.Key? key, required String homeUuid})
      : super(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page',
            args: MyHomeDetailsPageRouteArgs(key: key, homeUuid: homeUuid));

  static const String name = 'MyHomeDetailsPageRoute';
}

class MyHomeDetailsPageRouteArgs {
  const MyHomeDetailsPageRouteArgs({this.key, required this.homeUuid});

  final _i16.Key? key;

  final String homeUuid;

  @override
  String toString() {
    return 'MyHomeDetailsPageRouteArgs{key: $key, homeUuid: $homeUuid}';
  }
}

/// generated route for
/// [_i9.MyLocalActivityDetailsPage]
class MyLocalActivityDetailsPageRoute
    extends _i15.PageRouteInfo<MyLocalActivityDetailsPageRouteArgs> {
  MyLocalActivityDetailsPageRoute(
      {_i16.Key? key, required String localActivityUuid})
      : super(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page',
            args: MyLocalActivityDetailsPageRouteArgs(
                key: key, localActivityUuid: localActivityUuid));

  static const String name = 'MyLocalActivityDetailsPageRoute';
}

class MyLocalActivityDetailsPageRouteArgs {
  const MyLocalActivityDetailsPageRouteArgs(
      {this.key, required this.localActivityUuid});

  final _i16.Key? key;

  final String localActivityUuid;

  @override
  String toString() {
    return 'MyLocalActivityDetailsPageRouteArgs{key: $key, localActivityUuid: $localActivityUuid}';
  }
}

/// generated route for
/// [_i10.WalletPage]
class WalletPageRoute extends _i15.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i11.MyLocalActivitiesPage]
class MyLocalActivitiesPageRoute extends _i15.PageRouteInfo<void> {
  const MyLocalActivitiesPageRoute()
      : super(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page');

  static const String name = 'MyLocalActivitiesPageRoute';
}

/// generated route for
/// [_i12.TransactionHistoryPage]
class TransactionHistoryPageRoute
    extends _i15.PageRouteInfo<TransactionHistoryPageRouteArgs> {
  TransactionHistoryPageRoute({_i16.Key? key, required List<int> transactions})
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page',
            args: TransactionHistoryPageRouteArgs(
                key: key, transactions: transactions));

  static const String name = 'TransactionHistoryPageRoute';
}

class TransactionHistoryPageRouteArgs {
  const TransactionHistoryPageRouteArgs({this.key, required this.transactions});

  final _i16.Key? key;

  final List<int> transactions;

  @override
  String toString() {
    return 'TransactionHistoryPageRouteArgs{key: $key, transactions: $transactions}';
  }
}

/// generated route for
/// [_i13.SendTokensPage]
class SendTokensPageRoute extends _i15.PageRouteInfo<void> {
  const SendTokensPageRoute()
      : super(SendTokensPageRoute.name, path: '/send-tokens-page');

  static const String name = 'SendTokensPageRoute';
}

/// generated route for
/// [_i14.TestPage]
class TestPageRoute extends _i15.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
