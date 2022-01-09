// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i23;
import 'package:flutter/material.dart' as _i24;

import '../../domain/homes/home.dart' as _i25;
import '../../domain/local_activities/local_activity.dart' as _i26;
import '../disputes/disputes_page.dart' as _i5;
import '../disputes/general_disputes_page.dart' as _i12;
import '../disputes/problems_with_payments_page.dart' as _i11;
import '../disputes/start_dispute_page.dart' as _i10;
import '../home/home_page.dart' as _i4;
import '../my_homes/my_home_details_page.dart' as _i13;
import '../my_homes/my_homes_page.dart' as _i6;
import '../my_homes_form/my_homes_form.dart' as _i7;
import '../my_local_activities/my_local_activities_details_page.dart' as _i14;
import '../my_local_activities/my_local_activities_page.dart' as _i16;
import '../my_local_activities_form/category_selection_page.dart' as _i18;
import '../my_local_activities_form/my_local_activities_form.dart' as _i19;
import '../my_local_activities_form/new_local_activity_page.dart' as _i17;
import '../profile/profile_page.dart' as _i9;
import '../profile/send_tokens_page.dart' as _i21;
import '../profile/transaction_history_page.dart' as _i20;
import '../profile/wallet_page.dart' as _i15;
import '../rent_a_home/rent_a_home_page.dart' as _i8;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i22;

class MyRouter extends _i23.RootStackRouter {
  MyRouter([_i24.GlobalKey<_i24.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    DisputesPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.DisputesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.MyHomesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomesFormRouteArgs>(
          orElse: () => const MyHomesFormRouteArgs());
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.MyHomesForm(key: args.key, editedHome: args.editedHome),
          fullscreenDialog: true);
    },
    RentAHomePageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.RentAHomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    ProfilePageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    StartDisputesPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.StartDisputesPage(),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    ProblemsWithPaymentsPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.ProblemsWithPaymentsPage(),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    GeneralDisputesPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.GeneralDisputesPage(),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyHomeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeDetailsPageRouteArgs>();
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: _i13.MyHomeDetailsPage(key: args.key, homeUuid: args.homeUuid),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivityDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivityDetailsPageRouteArgs>();
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: _i14.MyLocalActivityDetailsPage(
              key: args.key, localActivityUuid: args.localActivityUuid),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.WalletPage(),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivitiesPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i16.MyLocalActivitiesPage(),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    NewLocalAcitvityPageRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i17.NewLocalAcitvityPage(),
          fullscreenDialog: true);
    },
    CategorySelectionPageRoute.name: (routeData) {
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i18.CategorySelectionPage(),
          fullscreenDialog: true);
    },
    MyLocalActivitiesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivitiesFormRouteArgs>(
          orElse: () => const MyLocalActivitiesFormRouteArgs());
      return _i23.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i19.MyLocalActivitiesForm(
              key: args.key, editedActivity: args.editedActivity),
          fullscreenDialog: true);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryPageRouteArgs>();
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: _i20.TransactionHistoryPage(
              key: args.key, transactions: args.transactions),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    SendTokensPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i21.SendTokensPage(),
          transitionsBuilder: _i23.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i23.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i22.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i23.RouteConfig> get routes => [
        _i23.RouteConfig(SplashPageRoute.name, path: '/'),
        _i23.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i23.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i23.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i23.RouteConfig(DisputesPageRoute.name, path: '/disputes-page'),
        _i23.RouteConfig(MyHomesPageRoute.name, path: '/my-homes-page'),
        _i23.RouteConfig(MyHomesFormRoute.name, path: '/my-homes-form'),
        _i23.RouteConfig(RentAHomePageRoute.name, path: '/rent-ahome-page'),
        _i23.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i23.RouteConfig(StartDisputesPageRoute.name,
            path: '/start-disputes-page'),
        _i23.RouteConfig(ProblemsWithPaymentsPageRoute.name,
            path: '/problems-with-payments-page'),
        _i23.RouteConfig(GeneralDisputesPageRoute.name,
            path: '/general-disputes-page'),
        _i23.RouteConfig(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page'),
        _i23.RouteConfig(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page'),
        _i23.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i23.RouteConfig(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page'),
        _i23.RouteConfig(NewLocalAcitvityPageRoute.name,
            path: '/new-local-acitvity-page'),
        _i23.RouteConfig(CategorySelectionPageRoute.name,
            path: '/category-selection-page'),
        _i23.RouteConfig(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form'),
        _i23.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i23.RouteConfig(SendTokensPageRoute.name, path: '/send-tokens-page'),
        _i23.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i23.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i23.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i23.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i23.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.DisputesPage]
class DisputesPageRoute extends _i23.PageRouteInfo<void> {
  const DisputesPageRoute()
      : super(DisputesPageRoute.name, path: '/disputes-page');

  static const String name = 'DisputesPageRoute';
}

/// generated route for
/// [_i6.MyHomesPage]
class MyHomesPageRoute extends _i23.PageRouteInfo<void> {
  const MyHomesPageRoute()
      : super(MyHomesPageRoute.name, path: '/my-homes-page');

  static const String name = 'MyHomesPageRoute';
}

/// generated route for
/// [_i7.MyHomesForm]
class MyHomesFormRoute extends _i23.PageRouteInfo<MyHomesFormRouteArgs> {
  MyHomesFormRoute({_i24.Key? key, _i25.Home? editedHome})
      : super(MyHomesFormRoute.name,
            path: '/my-homes-form',
            args: MyHomesFormRouteArgs(key: key, editedHome: editedHome));

  static const String name = 'MyHomesFormRoute';
}

class MyHomesFormRouteArgs {
  const MyHomesFormRouteArgs({this.key, this.editedHome});

  final _i24.Key? key;

  final _i25.Home? editedHome;

  @override
  String toString() {
    return 'MyHomesFormRouteArgs{key: $key, editedHome: $editedHome}';
  }
}

/// generated route for
/// [_i8.RentAHomePage]
class RentAHomePageRoute extends _i23.PageRouteInfo<void> {
  const RentAHomePageRoute()
      : super(RentAHomePageRoute.name, path: '/rent-ahome-page');

  static const String name = 'RentAHomePageRoute';
}

/// generated route for
/// [_i9.ProfilePage]
class ProfilePageRoute extends _i23.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i10.StartDisputesPage]
class StartDisputesPageRoute extends _i23.PageRouteInfo<void> {
  const StartDisputesPageRoute()
      : super(StartDisputesPageRoute.name, path: '/start-disputes-page');

  static const String name = 'StartDisputesPageRoute';
}

/// generated route for
/// [_i11.ProblemsWithPaymentsPage]
class ProblemsWithPaymentsPageRoute extends _i23.PageRouteInfo<void> {
  const ProblemsWithPaymentsPageRoute()
      : super(ProblemsWithPaymentsPageRoute.name,
            path: '/problems-with-payments-page');

  static const String name = 'ProblemsWithPaymentsPageRoute';
}

/// generated route for
/// [_i12.GeneralDisputesPage]
class GeneralDisputesPageRoute extends _i23.PageRouteInfo<void> {
  const GeneralDisputesPageRoute()
      : super(GeneralDisputesPageRoute.name, path: '/general-disputes-page');

  static const String name = 'GeneralDisputesPageRoute';
}

/// generated route for
/// [_i13.MyHomeDetailsPage]
class MyHomeDetailsPageRoute
    extends _i23.PageRouteInfo<MyHomeDetailsPageRouteArgs> {
  MyHomeDetailsPageRoute({_i24.Key? key, required String homeUuid})
      : super(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page',
            args: MyHomeDetailsPageRouteArgs(key: key, homeUuid: homeUuid));

  static const String name = 'MyHomeDetailsPageRoute';
}

class MyHomeDetailsPageRouteArgs {
  const MyHomeDetailsPageRouteArgs({this.key, required this.homeUuid});

  final _i24.Key? key;

  final String homeUuid;

  @override
  String toString() {
    return 'MyHomeDetailsPageRouteArgs{key: $key, homeUuid: $homeUuid}';
  }
}

/// generated route for
/// [_i14.MyLocalActivityDetailsPage]
class MyLocalActivityDetailsPageRoute
    extends _i23.PageRouteInfo<MyLocalActivityDetailsPageRouteArgs> {
  MyLocalActivityDetailsPageRoute(
      {_i24.Key? key, required String localActivityUuid})
      : super(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page',
            args: MyLocalActivityDetailsPageRouteArgs(
                key: key, localActivityUuid: localActivityUuid));

  static const String name = 'MyLocalActivityDetailsPageRoute';
}

class MyLocalActivityDetailsPageRouteArgs {
  const MyLocalActivityDetailsPageRouteArgs(
      {this.key, required this.localActivityUuid});

  final _i24.Key? key;

  final String localActivityUuid;

  @override
  String toString() {
    return 'MyLocalActivityDetailsPageRouteArgs{key: $key, localActivityUuid: $localActivityUuid}';
  }
}

/// generated route for
/// [_i15.WalletPage]
class WalletPageRoute extends _i23.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i16.MyLocalActivitiesPage]
class MyLocalActivitiesPageRoute extends _i23.PageRouteInfo<void> {
  const MyLocalActivitiesPageRoute()
      : super(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page');

  static const String name = 'MyLocalActivitiesPageRoute';
}

/// generated route for
/// [_i17.NewLocalAcitvityPage]
class NewLocalAcitvityPageRoute extends _i23.PageRouteInfo<void> {
  const NewLocalAcitvityPageRoute()
      : super(NewLocalAcitvityPageRoute.name, path: '/new-local-acitvity-page');

  static const String name = 'NewLocalAcitvityPageRoute';
}

/// generated route for
/// [_i18.CategorySelectionPage]
class CategorySelectionPageRoute extends _i23.PageRouteInfo<void> {
  const CategorySelectionPageRoute()
      : super(CategorySelectionPageRoute.name,
            path: '/category-selection-page');

  static const String name = 'CategorySelectionPageRoute';
}

/// generated route for
/// [_i19.MyLocalActivitiesForm]
class MyLocalActivitiesFormRoute
    extends _i23.PageRouteInfo<MyLocalActivitiesFormRouteArgs> {
  MyLocalActivitiesFormRoute(
      {_i24.Key? key, _i26.LocalActivity? editedActivity})
      : super(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form',
            args: MyLocalActivitiesFormRouteArgs(
                key: key, editedActivity: editedActivity));

  static const String name = 'MyLocalActivitiesFormRoute';
}

class MyLocalActivitiesFormRouteArgs {
  const MyLocalActivitiesFormRouteArgs({this.key, this.editedActivity});

  final _i24.Key? key;

  final _i26.LocalActivity? editedActivity;

  @override
  String toString() {
    return 'MyLocalActivitiesFormRouteArgs{key: $key, editedActivity: $editedActivity}';
  }
}

/// generated route for
/// [_i20.TransactionHistoryPage]
class TransactionHistoryPageRoute
    extends _i23.PageRouteInfo<TransactionHistoryPageRouteArgs> {
  TransactionHistoryPageRoute({_i24.Key? key, required List<int> transactions})
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page',
            args: TransactionHistoryPageRouteArgs(
                key: key, transactions: transactions));

  static const String name = 'TransactionHistoryPageRoute';
}

class TransactionHistoryPageRouteArgs {
  const TransactionHistoryPageRouteArgs({this.key, required this.transactions});

  final _i24.Key? key;

  final List<int> transactions;

  @override
  String toString() {
    return 'TransactionHistoryPageRouteArgs{key: $key, transactions: $transactions}';
  }
}

/// generated route for
/// [_i21.SendTokensPage]
class SendTokensPageRoute extends _i23.PageRouteInfo<void> {
  const SendTokensPageRoute()
      : super(SendTokensPageRoute.name, path: '/send-tokens-page');

  static const String name = 'SendTokensPageRoute';
}

/// generated route for
/// [_i22.TestPage]
class TestPageRoute extends _i23.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
