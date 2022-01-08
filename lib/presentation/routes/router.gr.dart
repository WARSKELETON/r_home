// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../../domain/homes/home.dart' as _i20;
import '../../domain/local_activities/local_activity.dart' as _i21;
import '../home/home_page.dart' as _i4;
import '../my_homes/my_home_details_page.dart' as _i8;
import '../my_homes/my_homes_page.dart' as _i5;
import '../my_homes_form/my_homes_form.dart' as _i6;
import '../my_local_activities/my_local_activities_details_page.dart' as _i9;
import '../my_local_activities/my_local_activities_page.dart' as _i11;
import '../my_local_activities_form/category_selection_page.dart' as _i13;
import '../my_local_activities_form/my_local_activities_form.dart' as _i14;
import '../my_local_activities_form/new_local_activity_page.dart' as _i12;
import '../profile/profile_page.dart' as _i7;
import '../profile/send_tokens_page.dart' as _i16;
import '../profile/transaction_history_page.dart' as _i15;
import '../profile/wallet_page.dart' as _i10;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i17;

class MyRouter extends _i18.RootStackRouter {
  MyRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesPageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.MyHomesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomesFormRouteArgs>(
          orElse: () => const MyHomesFormRouteArgs());
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.MyHomesForm(key: args.key, editedHome: args.editedHome),
          fullscreenDialog: true);
    },
    ProfilePageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeDetailsPageRouteArgs>();
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.MyHomeDetailsPage(key: args.key, homeUuid: args.homeUuid),
          transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivityDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivityDetailsPageRouteArgs>();
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: _i9.MyLocalActivityDetailsPage(
              key: args.key, localActivityUuid: args.localActivityUuid),
          transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.WalletPage(),
          transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivitiesPageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.MyLocalActivitiesPage(),
          transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    NewLocalAcitvityPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i12.NewLocalAcitvityPage(),
          fullscreenDialog: true);
    },
    CategorySelectionPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i13.CategorySelectionPage(),
          fullscreenDialog: true);
    },
    MyLocalActivitiesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivitiesFormRouteArgs>(
          orElse: () => const MyLocalActivitiesFormRouteArgs());
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.MyLocalActivitiesForm(
              key: args.key, editedActivity: args.editedActivity),
          fullscreenDialog: true);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryPageRouteArgs>();
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: _i15.TransactionHistoryPage(
              key: args.key, transactions: args.transactions),
          transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    SendTokensPageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i16.SendTokensPage(),
          transitionsBuilder: _i18.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i18.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i17.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(SplashPageRoute.name, path: '/'),
        _i18.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i18.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i18.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i18.RouteConfig(MyHomesPageRoute.name, path: '/my-homes-page'),
        _i18.RouteConfig(MyHomesFormRoute.name, path: '/my-homes-form'),
        _i18.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i18.RouteConfig(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page'),
        _i18.RouteConfig(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page'),
        _i18.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i18.RouteConfig(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page'),
        _i18.RouteConfig(NewLocalAcitvityPageRoute.name,
            path: '/new-local-acitvity-page'),
        _i18.RouteConfig(CategorySelectionPageRoute.name,
            path: '/category-selection-page'),
        _i18.RouteConfig(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form'),
        _i18.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i18.RouteConfig(SendTokensPageRoute.name, path: '/send-tokens-page'),
        _i18.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i18.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i18.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i18.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i18.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.MyHomesPage]
class MyHomesPageRoute extends _i18.PageRouteInfo<void> {
  const MyHomesPageRoute()
      : super(MyHomesPageRoute.name, path: '/my-homes-page');

  static const String name = 'MyHomesPageRoute';
}

/// generated route for
/// [_i6.MyHomesForm]
class MyHomesFormRoute extends _i18.PageRouteInfo<MyHomesFormRouteArgs> {
  MyHomesFormRoute({_i19.Key? key, _i20.Home? editedHome})
      : super(MyHomesFormRoute.name,
            path: '/my-homes-form',
            args: MyHomesFormRouteArgs(key: key, editedHome: editedHome));

  static const String name = 'MyHomesFormRoute';
}

class MyHomesFormRouteArgs {
  const MyHomesFormRouteArgs({this.key, this.editedHome});

  final _i19.Key? key;

  final _i20.Home? editedHome;

  @override
  String toString() {
    return 'MyHomesFormRouteArgs{key: $key, editedHome: $editedHome}';
  }
}

/// generated route for
/// [_i7.ProfilePage]
class ProfilePageRoute extends _i18.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i8.MyHomeDetailsPage]
class MyHomeDetailsPageRoute
    extends _i18.PageRouteInfo<MyHomeDetailsPageRouteArgs> {
  MyHomeDetailsPageRoute({_i19.Key? key, required String homeUuid})
      : super(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page',
            args: MyHomeDetailsPageRouteArgs(key: key, homeUuid: homeUuid));

  static const String name = 'MyHomeDetailsPageRoute';
}

class MyHomeDetailsPageRouteArgs {
  const MyHomeDetailsPageRouteArgs({this.key, required this.homeUuid});

  final _i19.Key? key;

  final String homeUuid;

  @override
  String toString() {
    return 'MyHomeDetailsPageRouteArgs{key: $key, homeUuid: $homeUuid}';
  }
}

/// generated route for
/// [_i9.MyLocalActivityDetailsPage]
class MyLocalActivityDetailsPageRoute
    extends _i18.PageRouteInfo<MyLocalActivityDetailsPageRouteArgs> {
  MyLocalActivityDetailsPageRoute(
      {_i19.Key? key, required String localActivityUuid})
      : super(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page',
            args: MyLocalActivityDetailsPageRouteArgs(
                key: key, localActivityUuid: localActivityUuid));

  static const String name = 'MyLocalActivityDetailsPageRoute';
}

class MyLocalActivityDetailsPageRouteArgs {
  const MyLocalActivityDetailsPageRouteArgs(
      {this.key, required this.localActivityUuid});

  final _i19.Key? key;

  final String localActivityUuid;

  @override
  String toString() {
    return 'MyLocalActivityDetailsPageRouteArgs{key: $key, localActivityUuid: $localActivityUuid}';
  }
}

/// generated route for
/// [_i10.WalletPage]
class WalletPageRoute extends _i18.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i11.MyLocalActivitiesPage]
class MyLocalActivitiesPageRoute extends _i18.PageRouteInfo<void> {
  const MyLocalActivitiesPageRoute()
      : super(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page');

  static const String name = 'MyLocalActivitiesPageRoute';
}

/// generated route for
/// [_i12.NewLocalAcitvityPage]
class NewLocalAcitvityPageRoute extends _i18.PageRouteInfo<void> {
  const NewLocalAcitvityPageRoute()
      : super(NewLocalAcitvityPageRoute.name, path: '/new-local-acitvity-page');

  static const String name = 'NewLocalAcitvityPageRoute';
}

/// generated route for
/// [_i13.CategorySelectionPage]
class CategorySelectionPageRoute extends _i18.PageRouteInfo<void> {
  const CategorySelectionPageRoute()
      : super(CategorySelectionPageRoute.name,
            path: '/category-selection-page');

  static const String name = 'CategorySelectionPageRoute';
}

/// generated route for
/// [_i14.MyLocalActivitiesForm]
class MyLocalActivitiesFormRoute
    extends _i18.PageRouteInfo<MyLocalActivitiesFormRouteArgs> {
  MyLocalActivitiesFormRoute(
      {_i19.Key? key, _i21.LocalActivity? editedActivity})
      : super(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form',
            args: MyLocalActivitiesFormRouteArgs(
                key: key, editedActivity: editedActivity));

  static const String name = 'MyLocalActivitiesFormRoute';
}

class MyLocalActivitiesFormRouteArgs {
  const MyLocalActivitiesFormRouteArgs({this.key, this.editedActivity});

  final _i19.Key? key;

  final _i21.LocalActivity? editedActivity;

  @override
  String toString() {
    return 'MyLocalActivitiesFormRouteArgs{key: $key, editedActivity: $editedActivity}';
  }
}

/// generated route for
/// [_i15.TransactionHistoryPage]
class TransactionHistoryPageRoute
    extends _i18.PageRouteInfo<TransactionHistoryPageRouteArgs> {
  TransactionHistoryPageRoute({_i19.Key? key, required List<int> transactions})
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page',
            args: TransactionHistoryPageRouteArgs(
                key: key, transactions: transactions));

  static const String name = 'TransactionHistoryPageRoute';
}

class TransactionHistoryPageRouteArgs {
  const TransactionHistoryPageRouteArgs({this.key, required this.transactions});

  final _i19.Key? key;

  final List<int> transactions;

  @override
  String toString() {
    return 'TransactionHistoryPageRouteArgs{key: $key, transactions: $transactions}';
  }
}

/// generated route for
/// [_i16.SendTokensPage]
class SendTokensPageRoute extends _i18.PageRouteInfo<void> {
  const SendTokensPageRoute()
      : super(SendTokensPageRoute.name, path: '/send-tokens-page');

  static const String name = 'SendTokensPageRoute';
}

/// generated route for
/// [_i17.TestPage]
class TestPageRoute extends _i18.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
