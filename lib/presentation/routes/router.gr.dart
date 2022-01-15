// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i33;
import 'package:flutter/material.dart' as _i34;

import '../../application/my_homes_form/my_homes_form_bloc.dart' as _i36;
import '../../domain/auth/domain_user.dart' as _i38;
import '../../domain/disputes/dispute.dart' as _i39;
import '../../domain/homes/home.dart' as _i35;
import '../../domain/local_activities/local_activity.dart' as _i37;
import '../disputes/dispute_details_page.dart' as _i16;
import '../disputes/disputes_list_page.dart' as _i17;
import '../disputes/disputes_page.dart' as _i5;
import '../disputes/start_dispute_page.dart' as _i15;
import '../home/home_page.dart' as _i4;
import '../homes/home_details_page.dart' as _i20;
import '../homes/homes_page.dart' as _i8;
import '../my_homes/my_home_details_page.dart' as _i21;
import '../my_homes/my_homes_page.dart' as _i6;
import '../my_homes_form/categories_page.dart' as _i13;
import '../my_homes_form/local_activities_page.dart' as _i12;
import '../my_homes_form/local_activity_details_page.dart' as _i23;
import '../my_homes_form/my_homes_form.dart' as _i9;
import '../my_local_activities/my_local_activities_details_page.dart' as _i24;
import '../my_local_activities/my_local_activities_page.dart' as _i26;
import '../my_local_activities_form/category_selection_page.dart' as _i28;
import '../my_local_activities_form/my_local_activities_form.dart' as _i29;
import '../my_local_activities_form/new_local_activity_page.dart' as _i27;
import '../my_stays/my_stays_details_page.dart' as _i22;
import '../my_stays/my_stays_page.dart' as _i7;
import '../profile/profile_page.dart' as _i11;
import '../profile/send_tokens_page.dart' as _i31;
import '../profile/transaction_history_page.dart' as _i30;
import '../profile/wallet_page.dart' as _i25;
import '../rent_a_home/rent_a_home_page.dart' as _i10;
import '../reward_user/reward_user_page.dart' as _i14;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i32;
import '../start_dispute_forms/general_disputes_page.dart' as _i19;
import '../start_dispute_forms/problems_with_payments_page.dart' as _i18;

class MyRouter extends _i33.RootStackRouter {
  MyRouter([_i34.GlobalKey<_i34.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i33.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    DisputesPageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.DisputesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesPageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.MyHomesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MyStaysPageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.MyStaysPage(),
          opaque: true,
          barrierDismissible: false);
    },
    HomesPageRoute.name: (routeData) {
      final args = routeData.argsAs<HomesPageRouteArgs>(
          orElse: () => const HomesPageRouteArgs());
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.HomesPage(key: args.key, activityUuid: args.activityUuid),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomesFormRouteArgs>(
          orElse: () => const MyHomesFormRouteArgs());
      return _i33.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.MyHomesForm(key: args.key, editedHome: args.editedHome),
          fullscreenDialog: true);
    },
    RentAHomePageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.RentAHomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    ProfilePageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    LocalActivitiesPageRoute.name: (routeData) {
      final args = routeData.argsAs<LocalActivitiesPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i12.LocalActivitiesPage(
              key: args.key,
              myHomesFormBloc: args.myHomesFormBloc,
              activityCategory: args.activityCategory),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    CategoriesPageRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i13.CategoriesPage(
              key: args.key, myHomesFormBloc: args.myHomesFormBloc),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    RewardUserPageRoute.name: (routeData) {
      final args = routeData.argsAs<RewardUserPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i14.RewardUserPage(
              key: args.key,
              user: args.user,
              routeNameToPopUntil: args.routeNameToPopUntil),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    StartDisputesPageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.StartDisputesPage(),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    DisputeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<DisputeDetailsPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i16.DisputeDetailsPage(
              key: args.key,
              disputeUuid: args.disputeUuid,
              creationDate: args.creationDate),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    DisputesListPageRoute.name: (routeData) {
      final args = routeData.argsAs<DisputesListPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i17.DisputesListPage(
              key: args.key, privateMode: args.privateMode),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    ProblemsWithPaymentsPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProblemsWithPaymentsPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i18.ProblemsWithPaymentsPage(
              key: args.key, disputeCategory: args.disputeCategory),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    GeneralDisputesPageRoute.name: (routeData) {
      final args = routeData.argsAs<GeneralDisputesPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i19.GeneralDisputesPage(
              key: args.key, disputeCategory: args.disputeCategory),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    HomeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i20.HomeDetailsPage(
              key: args.key,
              homeUuid: args.homeUuid,
              rentalUuid: args.rentalUuid),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyHomeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeDetailsPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i21.MyHomeDetailsPage(
              key: args.key,
              homeUuid: args.homeUuid,
              rentalUuid: args.rentalUuid),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyStayDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyStayDetailsPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i22.MyStayDetailsPage(
              key: args.key,
              homeUuid: args.homeUuid,
              rentalUuid: args.rentalUuid),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    LocalActivityDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<LocalActivityDetailsPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i23.LocalActivityDetailsPage(
              key: args.key,
              localActivityUuid: args.localActivityUuid,
              myHomesFormBloc: args.myHomesFormBloc),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivityDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivityDetailsPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i24.MyLocalActivityDetailsPage(
              key: args.key, localActivityUuid: args.localActivityUuid),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i25.WalletPage(),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivitiesPageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i26.MyLocalActivitiesPage(),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    NewLocalAcitvityPageRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i27.NewLocalAcitvityPage(),
          fullscreenDialog: true);
    },
    CategorySelectionPageRoute.name: (routeData) {
      return _i33.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i28.CategorySelectionPage(),
          fullscreenDialog: true);
    },
    MyLocalActivitiesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivitiesFormRouteArgs>(
          orElse: () => const MyLocalActivitiesFormRouteArgs());
      return _i33.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i29.MyLocalActivitiesForm(
              key: args.key, editedActivity: args.editedActivity),
          fullscreenDialog: true);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<TransactionHistoryPageRouteArgs>();
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: _i30.TransactionHistoryPage(
              key: args.key, transactions: args.transactions),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    SendTokensPageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i31.SendTokensPage(),
          transitionsBuilder: _i33.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i33.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i32.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i33.RouteConfig> get routes => [
        _i33.RouteConfig(SplashPageRoute.name, path: '/'),
        _i33.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i33.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i33.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i33.RouteConfig(DisputesPageRoute.name, path: '/disputes-page'),
        _i33.RouteConfig(MyHomesPageRoute.name, path: '/my-homes-page'),
        _i33.RouteConfig(MyStaysPageRoute.name, path: '/my-stays-page'),
        _i33.RouteConfig(HomesPageRoute.name, path: '/homes-page'),
        _i33.RouteConfig(MyHomesFormRoute.name, path: '/my-homes-form'),
        _i33.RouteConfig(RentAHomePageRoute.name, path: '/rent-ahome-page'),
        _i33.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i33.RouteConfig(LocalActivitiesPageRoute.name,
            path: '/local-activities-page'),
        _i33.RouteConfig(CategoriesPageRoute.name, path: '/categories-page'),
        _i33.RouteConfig(RewardUserPageRoute.name, path: '/reward-user-page'),
        _i33.RouteConfig(StartDisputesPageRoute.name,
            path: '/start-disputes-page'),
        _i33.RouteConfig(DisputeDetailsPageRoute.name,
            path: '/dispute-details-page'),
        _i33.RouteConfig(DisputesListPageRoute.name,
            path: '/disputes-list-page'),
        _i33.RouteConfig(ProblemsWithPaymentsPageRoute.name,
            path: '/problems-with-payments-page'),
        _i33.RouteConfig(GeneralDisputesPageRoute.name,
            path: '/general-disputes-page'),
        _i33.RouteConfig(HomeDetailsPageRoute.name, path: '/home-details-page'),
        _i33.RouteConfig(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page'),
        _i33.RouteConfig(MyStayDetailsPageRoute.name,
            path: '/my-stay-details-page'),
        _i33.RouteConfig(LocalActivityDetailsPageRoute.name,
            path: '/local-activity-details-page'),
        _i33.RouteConfig(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page'),
        _i33.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i33.RouteConfig(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page'),
        _i33.RouteConfig(NewLocalAcitvityPageRoute.name,
            path: '/new-local-acitvity-page'),
        _i33.RouteConfig(CategorySelectionPageRoute.name,
            path: '/category-selection-page'),
        _i33.RouteConfig(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form'),
        _i33.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i33.RouteConfig(SendTokensPageRoute.name, path: '/send-tokens-page'),
        _i33.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i33.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i33.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i33.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i33.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.DisputesPage]
class DisputesPageRoute extends _i33.PageRouteInfo<void> {
  const DisputesPageRoute()
      : super(DisputesPageRoute.name, path: '/disputes-page');

  static const String name = 'DisputesPageRoute';
}

/// generated route for
/// [_i6.MyHomesPage]
class MyHomesPageRoute extends _i33.PageRouteInfo<void> {
  const MyHomesPageRoute()
      : super(MyHomesPageRoute.name, path: '/my-homes-page');

  static const String name = 'MyHomesPageRoute';
}

/// generated route for
/// [_i7.MyStaysPage]
class MyStaysPageRoute extends _i33.PageRouteInfo<void> {
  const MyStaysPageRoute()
      : super(MyStaysPageRoute.name, path: '/my-stays-page');

  static const String name = 'MyStaysPageRoute';
}

/// generated route for
/// [_i8.HomesPage]
class HomesPageRoute extends _i33.PageRouteInfo<HomesPageRouteArgs> {
  HomesPageRoute({_i34.Key? key, String? activityUuid})
      : super(HomesPageRoute.name,
            path: '/homes-page',
            args: HomesPageRouteArgs(key: key, activityUuid: activityUuid));

  static const String name = 'HomesPageRoute';
}

class HomesPageRouteArgs {
  const HomesPageRouteArgs({this.key, this.activityUuid});

  final _i34.Key? key;

  final String? activityUuid;

  @override
  String toString() {
    return 'HomesPageRouteArgs{key: $key, activityUuid: $activityUuid}';
  }
}

/// generated route for
/// [_i9.MyHomesForm]
class MyHomesFormRoute extends _i33.PageRouteInfo<MyHomesFormRouteArgs> {
  MyHomesFormRoute({_i34.Key? key, _i35.Home? editedHome})
      : super(MyHomesFormRoute.name,
            path: '/my-homes-form',
            args: MyHomesFormRouteArgs(key: key, editedHome: editedHome));

  static const String name = 'MyHomesFormRoute';
}

class MyHomesFormRouteArgs {
  const MyHomesFormRouteArgs({this.key, this.editedHome});

  final _i34.Key? key;

  final _i35.Home? editedHome;

  @override
  String toString() {
    return 'MyHomesFormRouteArgs{key: $key, editedHome: $editedHome}';
  }
}

/// generated route for
/// [_i10.RentAHomePage]
class RentAHomePageRoute extends _i33.PageRouteInfo<void> {
  const RentAHomePageRoute()
      : super(RentAHomePageRoute.name, path: '/rent-ahome-page');

  static const String name = 'RentAHomePageRoute';
}

/// generated route for
/// [_i11.ProfilePage]
class ProfilePageRoute extends _i33.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i12.LocalActivitiesPage]
class LocalActivitiesPageRoute
    extends _i33.PageRouteInfo<LocalActivitiesPageRouteArgs> {
  LocalActivitiesPageRoute(
      {_i34.Key? key,
      required _i36.MyHomesFormBloc myHomesFormBloc,
      required _i37.ActivityCategory activityCategory})
      : super(LocalActivitiesPageRoute.name,
            path: '/local-activities-page',
            args: LocalActivitiesPageRouteArgs(
                key: key,
                myHomesFormBloc: myHomesFormBloc,
                activityCategory: activityCategory));

  static const String name = 'LocalActivitiesPageRoute';
}

class LocalActivitiesPageRouteArgs {
  const LocalActivitiesPageRouteArgs(
      {this.key,
      required this.myHomesFormBloc,
      required this.activityCategory});

  final _i34.Key? key;

  final _i36.MyHomesFormBloc myHomesFormBloc;

  final _i37.ActivityCategory activityCategory;

  @override
  String toString() {
    return 'LocalActivitiesPageRouteArgs{key: $key, myHomesFormBloc: $myHomesFormBloc, activityCategory: $activityCategory}';
  }
}

/// generated route for
/// [_i13.CategoriesPage]
class CategoriesPageRoute extends _i33.PageRouteInfo<CategoriesPageRouteArgs> {
  CategoriesPageRoute(
      {_i34.Key? key, required _i36.MyHomesFormBloc myHomesFormBloc})
      : super(CategoriesPageRoute.name,
            path: '/categories-page',
            args: CategoriesPageRouteArgs(
                key: key, myHomesFormBloc: myHomesFormBloc));

  static const String name = 'CategoriesPageRoute';
}

class CategoriesPageRouteArgs {
  const CategoriesPageRouteArgs({this.key, required this.myHomesFormBloc});

  final _i34.Key? key;

  final _i36.MyHomesFormBloc myHomesFormBloc;

  @override
  String toString() {
    return 'CategoriesPageRouteArgs{key: $key, myHomesFormBloc: $myHomesFormBloc}';
  }
}

/// generated route for
/// [_i14.RewardUserPage]
class RewardUserPageRoute extends _i33.PageRouteInfo<RewardUserPageRouteArgs> {
  RewardUserPageRoute(
      {_i34.Key? key,
      required _i38.DomainUser user,
      required String routeNameToPopUntil})
      : super(RewardUserPageRoute.name,
            path: '/reward-user-page',
            args: RewardUserPageRouteArgs(
                key: key,
                user: user,
                routeNameToPopUntil: routeNameToPopUntil));

  static const String name = 'RewardUserPageRoute';
}

class RewardUserPageRouteArgs {
  const RewardUserPageRouteArgs(
      {this.key, required this.user, required this.routeNameToPopUntil});

  final _i34.Key? key;

  final _i38.DomainUser user;

  final String routeNameToPopUntil;

  @override
  String toString() {
    return 'RewardUserPageRouteArgs{key: $key, user: $user, routeNameToPopUntil: $routeNameToPopUntil}';
  }
}

/// generated route for
/// [_i15.StartDisputesPage]
class StartDisputesPageRoute extends _i33.PageRouteInfo<void> {
  const StartDisputesPageRoute()
      : super(StartDisputesPageRoute.name, path: '/start-disputes-page');

  static const String name = 'StartDisputesPageRoute';
}

/// generated route for
/// [_i16.DisputeDetailsPage]
class DisputeDetailsPageRoute
    extends _i33.PageRouteInfo<DisputeDetailsPageRouteArgs> {
  DisputeDetailsPageRoute(
      {_i34.Key? key,
      required String disputeUuid,
      required DateTime creationDate})
      : super(DisputeDetailsPageRoute.name,
            path: '/dispute-details-page',
            args: DisputeDetailsPageRouteArgs(
                key: key,
                disputeUuid: disputeUuid,
                creationDate: creationDate));

  static const String name = 'DisputeDetailsPageRoute';
}

class DisputeDetailsPageRouteArgs {
  const DisputeDetailsPageRouteArgs(
      {this.key, required this.disputeUuid, required this.creationDate});

  final _i34.Key? key;

  final String disputeUuid;

  final DateTime creationDate;

  @override
  String toString() {
    return 'DisputeDetailsPageRouteArgs{key: $key, disputeUuid: $disputeUuid, creationDate: $creationDate}';
  }
}

/// generated route for
/// [_i17.DisputesListPage]
class DisputesListPageRoute
    extends _i33.PageRouteInfo<DisputesListPageRouteArgs> {
  DisputesListPageRoute({_i34.Key? key, required bool privateMode})
      : super(DisputesListPageRoute.name,
            path: '/disputes-list-page',
            args:
                DisputesListPageRouteArgs(key: key, privateMode: privateMode));

  static const String name = 'DisputesListPageRoute';
}

class DisputesListPageRouteArgs {
  const DisputesListPageRouteArgs({this.key, required this.privateMode});

  final _i34.Key? key;

  final bool privateMode;

  @override
  String toString() {
    return 'DisputesListPageRouteArgs{key: $key, privateMode: $privateMode}';
  }
}

/// generated route for
/// [_i18.ProblemsWithPaymentsPage]
class ProblemsWithPaymentsPageRoute
    extends _i33.PageRouteInfo<ProblemsWithPaymentsPageRouteArgs> {
  ProblemsWithPaymentsPageRoute(
      {_i34.Key? key, required _i39.DisputeCategory disputeCategory})
      : super(ProblemsWithPaymentsPageRoute.name,
            path: '/problems-with-payments-page',
            args: ProblemsWithPaymentsPageRouteArgs(
                key: key, disputeCategory: disputeCategory));

  static const String name = 'ProblemsWithPaymentsPageRoute';
}

class ProblemsWithPaymentsPageRouteArgs {
  const ProblemsWithPaymentsPageRouteArgs(
      {this.key, required this.disputeCategory});

  final _i34.Key? key;

  final _i39.DisputeCategory disputeCategory;

  @override
  String toString() {
    return 'ProblemsWithPaymentsPageRouteArgs{key: $key, disputeCategory: $disputeCategory}';
  }
}

/// generated route for
/// [_i19.GeneralDisputesPage]
class GeneralDisputesPageRoute
    extends _i33.PageRouteInfo<GeneralDisputesPageRouteArgs> {
  GeneralDisputesPageRoute(
      {_i34.Key? key, required _i39.DisputeCategory disputeCategory})
      : super(GeneralDisputesPageRoute.name,
            path: '/general-disputes-page',
            args: GeneralDisputesPageRouteArgs(
                key: key, disputeCategory: disputeCategory));

  static const String name = 'GeneralDisputesPageRoute';
}

class GeneralDisputesPageRouteArgs {
  const GeneralDisputesPageRouteArgs({this.key, required this.disputeCategory});

  final _i34.Key? key;

  final _i39.DisputeCategory disputeCategory;

  @override
  String toString() {
    return 'GeneralDisputesPageRouteArgs{key: $key, disputeCategory: $disputeCategory}';
  }
}

/// generated route for
/// [_i20.HomeDetailsPage]
class HomeDetailsPageRoute
    extends _i33.PageRouteInfo<HomeDetailsPageRouteArgs> {
  HomeDetailsPageRoute(
      {_i34.Key? key, required String homeUuid, required String rentalUuid})
      : super(HomeDetailsPageRoute.name,
            path: '/home-details-page',
            args: HomeDetailsPageRouteArgs(
                key: key, homeUuid: homeUuid, rentalUuid: rentalUuid));

  static const String name = 'HomeDetailsPageRoute';
}

class HomeDetailsPageRouteArgs {
  const HomeDetailsPageRouteArgs(
      {this.key, required this.homeUuid, required this.rentalUuid});

  final _i34.Key? key;

  final String homeUuid;

  final String rentalUuid;

  @override
  String toString() {
    return 'HomeDetailsPageRouteArgs{key: $key, homeUuid: $homeUuid, rentalUuid: $rentalUuid}';
  }
}

/// generated route for
/// [_i21.MyHomeDetailsPage]
class MyHomeDetailsPageRoute
    extends _i33.PageRouteInfo<MyHomeDetailsPageRouteArgs> {
  MyHomeDetailsPageRoute(
      {_i34.Key? key, required String homeUuid, required String rentalUuid})
      : super(MyHomeDetailsPageRoute.name,
            path: '/my-home-details-page',
            args: MyHomeDetailsPageRouteArgs(
                key: key, homeUuid: homeUuid, rentalUuid: rentalUuid));

  static const String name = 'MyHomeDetailsPageRoute';
}

class MyHomeDetailsPageRouteArgs {
  const MyHomeDetailsPageRouteArgs(
      {this.key, required this.homeUuid, required this.rentalUuid});

  final _i34.Key? key;

  final String homeUuid;

  final String rentalUuid;

  @override
  String toString() {
    return 'MyHomeDetailsPageRouteArgs{key: $key, homeUuid: $homeUuid, rentalUuid: $rentalUuid}';
  }
}

/// generated route for
/// [_i22.MyStayDetailsPage]
class MyStayDetailsPageRoute
    extends _i33.PageRouteInfo<MyStayDetailsPageRouteArgs> {
  MyStayDetailsPageRoute(
      {_i34.Key? key, required String homeUuid, required String rentalUuid})
      : super(MyStayDetailsPageRoute.name,
            path: '/my-stay-details-page',
            args: MyStayDetailsPageRouteArgs(
                key: key, homeUuid: homeUuid, rentalUuid: rentalUuid));

  static const String name = 'MyStayDetailsPageRoute';
}

class MyStayDetailsPageRouteArgs {
  const MyStayDetailsPageRouteArgs(
      {this.key, required this.homeUuid, required this.rentalUuid});

  final _i34.Key? key;

  final String homeUuid;

  final String rentalUuid;

  @override
  String toString() {
    return 'MyStayDetailsPageRouteArgs{key: $key, homeUuid: $homeUuid, rentalUuid: $rentalUuid}';
  }
}

/// generated route for
/// [_i23.LocalActivityDetailsPage]
class LocalActivityDetailsPageRoute
    extends _i33.PageRouteInfo<LocalActivityDetailsPageRouteArgs> {
  LocalActivityDetailsPageRoute(
      {_i34.Key? key,
      required String localActivityUuid,
      required _i36.MyHomesFormBloc myHomesFormBloc})
      : super(LocalActivityDetailsPageRoute.name,
            path: '/local-activity-details-page',
            args: LocalActivityDetailsPageRouteArgs(
                key: key,
                localActivityUuid: localActivityUuid,
                myHomesFormBloc: myHomesFormBloc));

  static const String name = 'LocalActivityDetailsPageRoute';
}

class LocalActivityDetailsPageRouteArgs {
  const LocalActivityDetailsPageRouteArgs(
      {this.key,
      required this.localActivityUuid,
      required this.myHomesFormBloc});

  final _i34.Key? key;

  final String localActivityUuid;

  final _i36.MyHomesFormBloc myHomesFormBloc;

  @override
  String toString() {
    return 'LocalActivityDetailsPageRouteArgs{key: $key, localActivityUuid: $localActivityUuid, myHomesFormBloc: $myHomesFormBloc}';
  }
}

/// generated route for
/// [_i24.MyLocalActivityDetailsPage]
class MyLocalActivityDetailsPageRoute
    extends _i33.PageRouteInfo<MyLocalActivityDetailsPageRouteArgs> {
  MyLocalActivityDetailsPageRoute(
      {_i34.Key? key, required String localActivityUuid})
      : super(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page',
            args: MyLocalActivityDetailsPageRouteArgs(
                key: key, localActivityUuid: localActivityUuid));

  static const String name = 'MyLocalActivityDetailsPageRoute';
}

class MyLocalActivityDetailsPageRouteArgs {
  const MyLocalActivityDetailsPageRouteArgs(
      {this.key, required this.localActivityUuid});

  final _i34.Key? key;

  final String localActivityUuid;

  @override
  String toString() {
    return 'MyLocalActivityDetailsPageRouteArgs{key: $key, localActivityUuid: $localActivityUuid}';
  }
}

/// generated route for
/// [_i25.WalletPage]
class WalletPageRoute extends _i33.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i26.MyLocalActivitiesPage]
class MyLocalActivitiesPageRoute extends _i33.PageRouteInfo<void> {
  const MyLocalActivitiesPageRoute()
      : super(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page');

  static const String name = 'MyLocalActivitiesPageRoute';
}

/// generated route for
/// [_i27.NewLocalAcitvityPage]
class NewLocalAcitvityPageRoute extends _i33.PageRouteInfo<void> {
  const NewLocalAcitvityPageRoute()
      : super(NewLocalAcitvityPageRoute.name, path: '/new-local-acitvity-page');

  static const String name = 'NewLocalAcitvityPageRoute';
}

/// generated route for
/// [_i28.CategorySelectionPage]
class CategorySelectionPageRoute extends _i33.PageRouteInfo<void> {
  const CategorySelectionPageRoute()
      : super(CategorySelectionPageRoute.name,
            path: '/category-selection-page');

  static const String name = 'CategorySelectionPageRoute';
}

/// generated route for
/// [_i29.MyLocalActivitiesForm]
class MyLocalActivitiesFormRoute
    extends _i33.PageRouteInfo<MyLocalActivitiesFormRouteArgs> {
  MyLocalActivitiesFormRoute(
      {_i34.Key? key, _i37.LocalActivity? editedActivity})
      : super(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form',
            args: MyLocalActivitiesFormRouteArgs(
                key: key, editedActivity: editedActivity));

  static const String name = 'MyLocalActivitiesFormRoute';
}

class MyLocalActivitiesFormRouteArgs {
  const MyLocalActivitiesFormRouteArgs({this.key, this.editedActivity});

  final _i34.Key? key;

  final _i37.LocalActivity? editedActivity;

  @override
  String toString() {
    return 'MyLocalActivitiesFormRouteArgs{key: $key, editedActivity: $editedActivity}';
  }
}

/// generated route for
/// [_i30.TransactionHistoryPage]
class TransactionHistoryPageRoute
    extends _i33.PageRouteInfo<TransactionHistoryPageRouteArgs> {
  TransactionHistoryPageRoute({_i34.Key? key, required List<int> transactions})
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page',
            args: TransactionHistoryPageRouteArgs(
                key: key, transactions: transactions));

  static const String name = 'TransactionHistoryPageRoute';
}

class TransactionHistoryPageRouteArgs {
  const TransactionHistoryPageRouteArgs({this.key, required this.transactions});

  final _i34.Key? key;

  final List<int> transactions;

  @override
  String toString() {
    return 'TransactionHistoryPageRouteArgs{key: $key, transactions: $transactions}';
  }
}

/// generated route for
/// [_i31.SendTokensPage]
class SendTokensPageRoute extends _i33.PageRouteInfo<void> {
  const SendTokensPageRoute()
      : super(SendTokensPageRoute.name, path: '/send-tokens-page');

  static const String name = 'SendTokensPageRoute';
}

/// generated route for
/// [_i32.TestPage]
class TestPageRoute extends _i33.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
