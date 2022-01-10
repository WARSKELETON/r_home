// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i25;
import 'package:flutter/material.dart' as _i26;

import '../../domain/disputes/dispute.dart' as _i28;
import '../../domain/homes/home.dart' as _i27;
import '../../domain/local_activities/local_activity.dart' as _i29;
import '../disputes/disputes_page.dart' as _i5;
import '../disputes/my_disputes_page.dart' as _i11;
import '../disputes/participate_in_dispute_page.dart' as _i12;
import '../disputes/start_dispute_page.dart' as _i10;
import '../home/home_page.dart' as _i4;
import '../my_homes/my_home_details_page.dart' as _i15;
import '../my_homes/my_homes_page.dart' as _i6;
import '../my_homes_form/my_homes_form.dart' as _i7;
import '../my_local_activities/my_local_activities_details_page.dart' as _i16;
import '../my_local_activities/my_local_activities_page.dart' as _i18;
import '../my_local_activities_form/category_selection_page.dart' as _i20;
import '../my_local_activities_form/my_local_activities_form.dart' as _i21;
import '../my_local_activities_form/new_local_activity_page.dart' as _i19;
import '../profile/profile_page.dart' as _i9;
import '../profile/send_tokens_page.dart' as _i23;
import '../profile/transaction_history_page.dart' as _i22;
import '../profile/wallet_page.dart' as _i17;
import '../rent_a_home/rent_a_home_page.dart' as _i8;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i24;
import '../start_dispute_forms/general_disputes_page.dart' as _i14;
import '../start_dispute_forms/problems_with_payments_page.dart' as _i13;

class MyRouter extends _i25.RootStackRouter {
  MyRouter([_i26.GlobalKey<_i26.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i25.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i25.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i25.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i25.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    DisputesPageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.DisputesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesPageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.MyHomesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomesFormRouteArgs>(
          orElse: () => const MyHomesFormRouteArgs());
      return _i25.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.MyHomesForm(key: args.key, editedHome: args.editedHome),
          fullscreenDialog: true);
    },
    RentAHomePageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.RentAHomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    ProfilePageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    StartDisputesPageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.StartDisputesPage(),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyDisputesPageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.MyDisputesPage(),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    ParticipateInDisputePageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.ParticipateInDisputePage(),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    ProblemsWithPaymentsPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProblemsWithPaymentsPageRouteArgs>();
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: _i13.ProblemsWithPaymentsPage(
              key: args.key, disputeCategory: args.disputeCategory),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    GeneralDisputesPageRoute.name: (routeData) {
      final args = routeData.argsAs<GeneralDisputesPageRouteArgs>();
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: _i14.GeneralDisputesPage(
              key: args.key, disputeCategory: args.disputeCategory),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyHomeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeDetailsPageRouteArgs>();
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: _i15.MyHomeDetailsPage(key: args.key, homeUuid: args.homeUuid),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivityDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivityDetailsPageRouteArgs>();
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: _i16.MyLocalActivityDetailsPage(
              key: args.key, localActivityUuid: args.localActivityUuid),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i17.WalletPage(),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivitiesPageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i18.MyLocalActivitiesPage(),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    NewLocalAcitvityPageRoute.name: (routeData) {
      return _i25.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i19.NewLocalAcitvityPage(),
          fullscreenDialog: true);
    },
    CategorySelectionPageRoute.name: (routeData) {
      return _i25.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i20.CategorySelectionPage(),
          fullscreenDialog: true);
    },
    MyLocalActivitiesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivitiesFormRouteArgs>(
          orElse: () => const MyLocalActivitiesFormRouteArgs());
      return _i25.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i21.MyLocalActivitiesForm(
              key: args.key, editedActivity: args.editedActivity),
          fullscreenDialog: true);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryPageRouteArgs>();
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: _i22.TransactionHistoryPage(
              key: args.key, transactions: args.transactions),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    SendTokensPageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i23.SendTokensPage(),
          transitionsBuilder: _i25.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i25.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i24.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i25.RouteConfig> get routes => [
        _i25.RouteConfig(SplashPageRoute.name, path: '/'),
        _i25.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i25.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i25.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i25.RouteConfig(DisputesPageRoute.name, path: '/disputes-page'),
        _i25.RouteConfig(MyHomesPageRoute.name, path: '/my-homes-page'),
        _i25.RouteConfig(MyHomesFormRoute.name, path: '/my-homes-form'),
        _i25.RouteConfig(RentAHomePageRoute.name, path: '/rent-ahome-page'),
        _i25.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i25.RouteConfig(StartDisputesPageRoute.name,
            path: '/start-disputes-page'),
        _i25.RouteConfig(MyDisputesPageRoute.name, path: '/my-disputes-page'),
        _i25.RouteConfig(ParticipateInDisputePageRoute.name,
            path: '/participate-in-dispute-page'),
        _i25.RouteConfig(ProblemsWithPaymentsPageRoute.name,
            path: '/problems-with-payments-page'),
        _i25.RouteConfig(GeneralDisputesPageRoute.name,
            path: '/general-disputes-page'),
        _i25.RouteConfig(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page'),
        _i25.RouteConfig(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page'),
        _i25.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i25.RouteConfig(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page'),
        _i25.RouteConfig(NewLocalAcitvityPageRoute.name,
            path: '/new-local-acitvity-page'),
        _i25.RouteConfig(CategorySelectionPageRoute.name,
            path: '/category-selection-page'),
        _i25.RouteConfig(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form'),
        _i25.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i25.RouteConfig(SendTokensPageRoute.name, path: '/send-tokens-page'),
        _i25.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i25.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i25.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i25.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i25.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.DisputesPage]
class DisputesPageRoute extends _i25.PageRouteInfo<void> {
  const DisputesPageRoute()
      : super(DisputesPageRoute.name, path: '/disputes-page');

  static const String name = 'DisputesPageRoute';
}

/// generated route for
/// [_i6.MyHomesPage]
class MyHomesPageRoute extends _i25.PageRouteInfo<void> {
  const MyHomesPageRoute()
      : super(MyHomesPageRoute.name, path: '/my-homes-page');

  static const String name = 'MyHomesPageRoute';
}

/// generated route for
/// [_i7.MyHomesForm]
class MyHomesFormRoute extends _i25.PageRouteInfo<MyHomesFormRouteArgs> {
  MyHomesFormRoute({_i26.Key? key, _i27.Home? editedHome})
      : super(MyHomesFormRoute.name,
            path: '/my-homes-form',
            args: MyHomesFormRouteArgs(key: key, editedHome: editedHome));

  static const String name = 'MyHomesFormRoute';
}

class MyHomesFormRouteArgs {
  const MyHomesFormRouteArgs({this.key, this.editedHome});

  final _i26.Key? key;

  final _i27.Home? editedHome;

  @override
  String toString() {
    return 'MyHomesFormRouteArgs{key: $key, editedHome: $editedHome}';
  }
}

/// generated route for
/// [_i8.RentAHomePage]
class RentAHomePageRoute extends _i25.PageRouteInfo<void> {
  const RentAHomePageRoute()
      : super(RentAHomePageRoute.name, path: '/rent-ahome-page');

  static const String name = 'RentAHomePageRoute';
}

/// generated route for
/// [_i9.ProfilePage]
class ProfilePageRoute extends _i25.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i10.StartDisputesPage]
class StartDisputesPageRoute extends _i25.PageRouteInfo<void> {
  const StartDisputesPageRoute()
      : super(StartDisputesPageRoute.name, path: '/start-disputes-page');

  static const String name = 'StartDisputesPageRoute';
}

/// generated route for
/// [_i11.MyDisputesPage]
class MyDisputesPageRoute extends _i25.PageRouteInfo<void> {
  const MyDisputesPageRoute()
      : super(MyDisputesPageRoute.name, path: '/my-disputes-page');

  static const String name = 'MyDisputesPageRoute';
}

/// generated route for
/// [_i12.ParticipateInDisputePage]
class ParticipateInDisputePageRoute extends _i25.PageRouteInfo<void> {
  const ParticipateInDisputePageRoute()
      : super(ParticipateInDisputePageRoute.name,
            path: '/participate-in-dispute-page');

  static const String name = 'ParticipateInDisputePageRoute';
}

/// generated route for
/// [_i13.ProblemsWithPaymentsPage]
class ProblemsWithPaymentsPageRoute
    extends _i25.PageRouteInfo<ProblemsWithPaymentsPageRouteArgs> {
  ProblemsWithPaymentsPageRoute(
      {_i26.Key? key, required _i28.DisputeCategory disputeCategory})
      : super(ProblemsWithPaymentsPageRoute.name,
            path: '/problems-with-payments-page',
            args: ProblemsWithPaymentsPageRouteArgs(
                key: key, disputeCategory: disputeCategory));

  static const String name = 'ProblemsWithPaymentsPageRoute';
}

class ProblemsWithPaymentsPageRouteArgs {
  const ProblemsWithPaymentsPageRouteArgs(
      {this.key, required this.disputeCategory});

  final _i26.Key? key;

  final _i28.DisputeCategory disputeCategory;

  @override
  String toString() {
    return 'ProblemsWithPaymentsPageRouteArgs{key: $key, disputeCategory: $disputeCategory}';
  }
}

/// generated route for
/// [_i14.GeneralDisputesPage]
class GeneralDisputesPageRoute
    extends _i25.PageRouteInfo<GeneralDisputesPageRouteArgs> {
  GeneralDisputesPageRoute(
      {_i26.Key? key, required _i28.DisputeCategory disputeCategory})
      : super(GeneralDisputesPageRoute.name,
            path: '/general-disputes-page',
            args: GeneralDisputesPageRouteArgs(
                key: key, disputeCategory: disputeCategory));

  static const String name = 'GeneralDisputesPageRoute';
}

class GeneralDisputesPageRouteArgs {
  const GeneralDisputesPageRouteArgs({this.key, required this.disputeCategory});

  final _i26.Key? key;

  final _i28.DisputeCategory disputeCategory;

  @override
  String toString() {
    return 'GeneralDisputesPageRouteArgs{key: $key, disputeCategory: $disputeCategory}';
  }
}

/// generated route for
/// [_i15.MyHomeDetailsPage]
class MyHomeDetailsPageRoute
    extends _i25.PageRouteInfo<MyHomeDetailsPageRouteArgs> {
  MyHomeDetailsPageRoute({_i26.Key? key, required String homeUuid})
      : super(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page',
            args: MyHomeDetailsPageRouteArgs(key: key, homeUuid: homeUuid));

  static const String name = 'MyHomeDetailsPageRoute';
}

class MyHomeDetailsPageRouteArgs {
  const MyHomeDetailsPageRouteArgs({this.key, required this.homeUuid});

  final _i26.Key? key;

  final String homeUuid;

  @override
  String toString() {
    return 'MyHomeDetailsPageRouteArgs{key: $key, homeUuid: $homeUuid}';
  }
}

/// generated route for
/// [_i16.MyLocalActivityDetailsPage]
class MyLocalActivityDetailsPageRoute
    extends _i25.PageRouteInfo<MyLocalActivityDetailsPageRouteArgs> {
  MyLocalActivityDetailsPageRoute(
      {_i26.Key? key, required String localActivityUuid})
      : super(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page',
            args: MyLocalActivityDetailsPageRouteArgs(
                key: key, localActivityUuid: localActivityUuid));

  static const String name = 'MyLocalActivityDetailsPageRoute';
}

class MyLocalActivityDetailsPageRouteArgs {
  const MyLocalActivityDetailsPageRouteArgs(
      {this.key, required this.localActivityUuid});

  final _i26.Key? key;

  final String localActivityUuid;

  @override
  String toString() {
    return 'MyLocalActivityDetailsPageRouteArgs{key: $key, localActivityUuid: $localActivityUuid}';
  }
}

/// generated route for
/// [_i17.WalletPage]
class WalletPageRoute extends _i25.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i18.MyLocalActivitiesPage]
class MyLocalActivitiesPageRoute extends _i25.PageRouteInfo<void> {
  const MyLocalActivitiesPageRoute()
      : super(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page');

  static const String name = 'MyLocalActivitiesPageRoute';
}

/// generated route for
/// [_i19.NewLocalAcitvityPage]
class NewLocalAcitvityPageRoute extends _i25.PageRouteInfo<void> {
  const NewLocalAcitvityPageRoute()
      : super(NewLocalAcitvityPageRoute.name, path: '/new-local-acitvity-page');

  static const String name = 'NewLocalAcitvityPageRoute';
}

/// generated route for
/// [_i20.CategorySelectionPage]
class CategorySelectionPageRoute extends _i25.PageRouteInfo<void> {
  const CategorySelectionPageRoute()
      : super(CategorySelectionPageRoute.name,
            path: '/category-selection-page');

  static const String name = 'CategorySelectionPageRoute';
}

/// generated route for
/// [_i21.MyLocalActivitiesForm]
class MyLocalActivitiesFormRoute
    extends _i25.PageRouteInfo<MyLocalActivitiesFormRouteArgs> {
  MyLocalActivitiesFormRoute(
      {_i26.Key? key, _i29.LocalActivity? editedActivity})
      : super(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form',
            args: MyLocalActivitiesFormRouteArgs(
                key: key, editedActivity: editedActivity));

  static const String name = 'MyLocalActivitiesFormRoute';
}

class MyLocalActivitiesFormRouteArgs {
  const MyLocalActivitiesFormRouteArgs({this.key, this.editedActivity});

  final _i26.Key? key;

  final _i29.LocalActivity? editedActivity;

  @override
  String toString() {
    return 'MyLocalActivitiesFormRouteArgs{key: $key, editedActivity: $editedActivity}';
  }
}

/// generated route for
/// [_i22.TransactionHistoryPage]
class TransactionHistoryPageRoute
    extends _i25.PageRouteInfo<TransactionHistoryPageRouteArgs> {
  TransactionHistoryPageRoute({_i26.Key? key, required List<int> transactions})
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page',
            args: TransactionHistoryPageRouteArgs(
                key: key, transactions: transactions));

  static const String name = 'TransactionHistoryPageRoute';
}

class TransactionHistoryPageRouteArgs {
  const TransactionHistoryPageRouteArgs({this.key, required this.transactions});

  final _i26.Key? key;

  final List<int> transactions;

  @override
  String toString() {
    return 'TransactionHistoryPageRouteArgs{key: $key, transactions: $transactions}';
  }
}

/// generated route for
/// [_i23.SendTokensPage]
class SendTokensPageRoute extends _i25.PageRouteInfo<void> {
  const SendTokensPageRoute()
      : super(SendTokensPageRoute.name, path: '/send-tokens-page');

  static const String name = 'SendTokensPageRoute';
}

/// generated route for
/// [_i24.TestPage]
class TestPageRoute extends _i25.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
