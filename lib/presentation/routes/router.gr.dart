// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../../domain/homes/home.dart' as _i18;
import '../../domain/local_activities/local_activity.dart' as _i19;
import '../home/home_page.dart' as _i4;
import '../my_homes/my_home_page.dart' as _i8;
import '../my_homes/my_homes_page.dart' as _i5;
import '../my_homes_form/my_homes_form.dart' as _i6;
import '../my_local_activities_form/category_selection_page.dart' as _i11;
import '../my_local_activities_form/my_local_activities_form.dart' as _i12;
import '../profile/my_local_activities_page.dart' as _i10;
import '../profile/profile_page.dart' as _i7;
import '../profile/send_tokens_page.dart' as _i14;
import '../profile/transaction_history_page.dart' as _i13;
import '../profile/wallet_page.dart' as _i9;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i15;

class MyRouter extends _i16.RootStackRouter {
  MyRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesPageRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.MyHomesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomesFormRouteArgs>(
          orElse: () => const MyHomesFormRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.MyHomesForm(key: args.key, editedHome: args.editedHome),
          fullscreenDialog: true);
    },
    ProfilePageRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomePageRouteArgs>();
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.MyHomePage(key: args.key, homeUuid: args.homeUuid),
          transitionsBuilder: _i16.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.WalletPage(),
          transitionsBuilder: _i16.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivitiesPageRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.MyLocalActivitiesPage(),
          transitionsBuilder: _i16.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    CategorySelectionPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i11.CategorySelectionPage(),
          fullscreenDialog: true);
    },
    MyLocalActivitiesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivitiesFormRouteArgs>(
          orElse: () => const MyLocalActivitiesFormRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.MyLocalActivitiesForm(
              key: args.key, editedActivity: args.editedActivity),
          fullscreenDialog: true);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryPageRouteArgs>();
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: _i13.TransactionHistoryPage(
              key: args.key, transactions: args.transactions),
          transitionsBuilder: _i16.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    SendTokensPageRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.SendTokensPage(),
          transitionsBuilder: _i16.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i16.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(SplashPageRoute.name, path: '/'),
        _i16.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i16.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i16.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i16.RouteConfig(MyHomesPageRoute.name, path: '/my-homes-page'),
        _i16.RouteConfig(MyHomesFormRoute.name, path: '/my-homes-form'),
        _i16.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i16.RouteConfig(MyHomePageRoute.name, path: '/my-home-page'),
        _i16.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i16.RouteConfig(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page'),
        _i16.RouteConfig(CategorySelectionPageRoute.name,
            path: '/category-selection-page'),
        _i16.RouteConfig(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form'),
        _i16.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i16.RouteConfig(SendTokensPageRoute.name, path: '/send-tokens-page'),
        _i16.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i16.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i16.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i16.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i16.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.MyHomesPage]
class MyHomesPageRoute extends _i16.PageRouteInfo<void> {
  const MyHomesPageRoute()
      : super(MyHomesPageRoute.name, path: '/my-homes-page');

  static const String name = 'MyHomesPageRoute';
}

/// generated route for
/// [_i6.MyHomesForm]
class MyHomesFormRoute extends _i16.PageRouteInfo<MyHomesFormRouteArgs> {
  MyHomesFormRoute({_i17.Key? key, _i18.Home? editedHome})
      : super(MyHomesFormRoute.name,
            path: '/my-homes-form',
            args: MyHomesFormRouteArgs(key: key, editedHome: editedHome));

  static const String name = 'MyHomesFormRoute';
}

class MyHomesFormRouteArgs {
  const MyHomesFormRouteArgs({this.key, this.editedHome});

  final _i17.Key? key;

  final _i18.Home? editedHome;

  @override
  String toString() {
    return 'MyHomesFormRouteArgs{key: $key, editedHome: $editedHome}';
  }
}

/// generated route for
/// [_i7.ProfilePage]
class ProfilePageRoute extends _i16.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i8.MyHomePage]
class MyHomePageRoute extends _i16.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({_i17.Key? key, required String homeUuid})
      : super(MyHomePageRoute.name,
            path: '/my-home-page',
            args: MyHomePageRouteArgs(key: key, homeUuid: homeUuid));

  static const String name = 'MyHomePageRoute';
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({this.key, required this.homeUuid});

  final _i17.Key? key;

  final String homeUuid;

  @override
  String toString() {
    return 'MyHomePageRouteArgs{key: $key, homeUuid: $homeUuid}';
  }
}

/// generated route for
/// [_i9.WalletPage]
class WalletPageRoute extends _i16.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i10.MyLocalActivitiesPage]
class MyLocalActivitiesPageRoute extends _i16.PageRouteInfo<void> {
  const MyLocalActivitiesPageRoute()
      : super(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page');

  static const String name = 'MyLocalActivitiesPageRoute';
}

/// generated route for
/// [_i11.CategorySelectionPage]
class CategorySelectionPageRoute extends _i16.PageRouteInfo<void> {
  const CategorySelectionPageRoute()
      : super(CategorySelectionPageRoute.name,
            path: '/category-selection-page');

  static const String name = 'CategorySelectionPageRoute';
}

/// generated route for
/// [_i12.MyLocalActivitiesForm]
class MyLocalActivitiesFormRoute
    extends _i16.PageRouteInfo<MyLocalActivitiesFormRouteArgs> {
  MyLocalActivitiesFormRoute(
      {_i17.Key? key, _i19.LocalActivity? editedActivity})
      : super(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form',
            args: MyLocalActivitiesFormRouteArgs(
                key: key, editedActivity: editedActivity));

  static const String name = 'MyLocalActivitiesFormRoute';
}

class MyLocalActivitiesFormRouteArgs {
  const MyLocalActivitiesFormRouteArgs({this.key, this.editedActivity});

  final _i17.Key? key;

  final _i19.LocalActivity? editedActivity;

  @override
  String toString() {
    return 'MyLocalActivitiesFormRouteArgs{key: $key, editedActivity: $editedActivity}';
  }
}

/// generated route for
/// [_i13.TransactionHistoryPage]
class TransactionHistoryPageRoute
    extends _i16.PageRouteInfo<TransactionHistoryPageRouteArgs> {
  TransactionHistoryPageRoute({_i17.Key? key, required List<int> transactions})
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page',
            args: TransactionHistoryPageRouteArgs(
                key: key, transactions: transactions));

  static const String name = 'TransactionHistoryPageRoute';
}

class TransactionHistoryPageRouteArgs {
  const TransactionHistoryPageRouteArgs({this.key, required this.transactions});

  final _i17.Key? key;

  final List<int> transactions;

  @override
  String toString() {
    return 'TransactionHistoryPageRouteArgs{key: $key, transactions: $transactions}';
  }
}

/// generated route for
/// [_i14.SendTokensPage]
class SendTokensPageRoute extends _i16.PageRouteInfo<void> {
  const SendTokensPageRoute()
      : super(SendTokensPageRoute.name, path: '/send-tokens-page');

  static const String name = 'SendTokensPageRoute';
}

/// generated route for
/// [_i15.TestPage]
class TestPageRoute extends _i16.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
