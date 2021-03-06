// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i31;
import 'package:flutter/material.dart' as _i32;

import '../../application/my_homes_form/my_homes_form_bloc.dart' as _i34;
import '../../domain/auth/domain_user.dart' as _i36;
import '../../domain/disputes/dispute.dart' as _i37;
import '../../domain/homes/home.dart' as _i33;
import '../../domain/local_activities/local_activity.dart' as _i35;
import '../core/images_viewer_page.dart' as _i8;
import '../disputes/dispute_details_page.dart' as _i15;
import '../disputes/disputes_list_page.dart' as _i16;
import '../disputes/disputes_page.dart' as _i5;
import '../disputes/start_dispute_page.dart' as _i14;
import '../home/home_page.dart' as _i4;
import '../homes/home_details_page.dart' as _i19;
import '../homes/homes_page.dart' as _i6;
import '../my_homes_form/categories_page.dart' as _i12;
import '../my_homes_form/local_activities_page.dart' as _i11;
import '../my_homes_form/local_activity_details_page.dart' as _i20;
import '../my_homes_form/my_homes_form.dart' as _i7;
import '../my_local_activities/my_local_activities_details_page.dart' as _i21;
import '../my_local_activities/my_local_activities_page.dart' as _i24;
import '../my_local_activities_form/category_selection_page.dart' as _i26;
import '../my_local_activities_form/my_local_activities_form.dart' as _i27;
import '../my_local_activities_form/new_local_activity_page.dart' as _i25;
import '../profile/monitorize_fees_page.dart' as _i23;
import '../profile/profile_page.dart' as _i10;
import '../profile/send_tokens_page.dart' as _i29;
import '../profile/transaction_history_page.dart' as _i28;
import '../profile/wallet_page.dart' as _i22;
import '../rent_a_home/rent_a_home_page.dart' as _i9;
import '../reward_user/reward_user_page.dart' as _i13;
import '../sign_in/role_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../splash/test_page.dart' as _i30;
import '../start_dispute_forms/general_disputes_page.dart' as _i18;
import '../start_dispute_forms/problems_with_payments_page.dart' as _i17;

class MyRouter extends _i31.RootStackRouter {
  MyRouter([_i32.GlobalKey<_i32.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i31.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    RolePageRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.RolePage());
    },
    HomePageRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomePage(),
          opaque: true,
          barrierDismissible: false);
    },
    DisputesPageRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.DisputesPage(),
          opaque: true,
          barrierDismissible: false);
    },
    HomesPageRoute.name: (routeData) {
      final args = routeData.argsAs<HomesPageRouteArgs>(
          orElse: () => const HomesPageRouteArgs());
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.HomesPage(key: args.key, activityUuid: args.activityUuid),
          opaque: true,
          barrierDismissible: false);
    },
    MyHomesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomesFormRouteArgs>(
          orElse: () => const MyHomesFormRouteArgs());
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.MyHomesForm(key: args.key, editedHome: args.editedHome),
          fullscreenDialog: true);
    },
    ImagesViewerPageRoute.name: (routeData) {
      final args = routeData.argsAs<ImagesViewerPageRouteArgs>();
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ImagesViewerPage(
              key: args.key,
              images: args.images,
              initialIndex: args.initialIndex),
          fullscreenDialog: true);
    },
    RentAHomePageRoute.name: (routeData) {
      final args = routeData.argsAs<RentAHomePageRouteArgs>(
          orElse: () => const RentAHomePageRouteArgs());
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i9.RentAHomePage(key: args.key, location: args.location),
          opaque: true,
          barrierDismissible: false);
    },
    ProfilePageRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.ProfilePage(),
          opaque: true,
          barrierDismissible: false);
    },
    LocalActivitiesPageRoute.name: (routeData) {
      final args = routeData.argsAs<LocalActivitiesPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i11.LocalActivitiesPage(
              key: args.key,
              myHomesFormBloc: args.myHomesFormBloc,
              activityCategory: args.activityCategory),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    CategoriesPageRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i12.CategoriesPage(
              key: args.key, myHomesFormBloc: args.myHomesFormBloc),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    RewardUserPageRoute.name: (routeData) {
      final args = routeData.argsAs<RewardUserPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i13.RewardUserPage(
              key: args.key,
              user: args.user,
              routeNameToPopUntil: args.routeNameToPopUntil),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    StartDisputesPageRoute.name: (routeData) {
      final args = routeData.argsAs<StartDisputesPageRouteArgs>(
          orElse: () => const StartDisputesPageRouteArgs());
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i14.StartDisputesPage(
              key: args.key,
              rentalUuid: args.rentalUuid,
              homeUuid: args.homeUuid),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    DisputeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<DisputeDetailsPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i15.DisputeDetailsPage(
              key: args.key,
              disputeUuid: args.disputeUuid,
              creationDate: args.creationDate),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    DisputesListPageRoute.name: (routeData) {
      final args = routeData.argsAs<DisputesListPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i16.DisputesListPage(
              key: args.key, privateMode: args.privateMode),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    ProblemsWithPaymentsPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProblemsWithPaymentsPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i17.ProblemsWithPaymentsPage(
              key: args.key, dispute: args.dispute),
          fullscreenDialog: true,
          opaque: true,
          barrierDismissible: false);
    },
    GeneralDisputesPageRoute.name: (routeData) {
      final args = routeData.argsAs<GeneralDisputesPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i18.GeneralDisputesPage(key: args.key, dispute: args.dispute),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    HomeDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i19.HomeDetailsPage(
              key: args.key,
              homeUuid: args.homeUuid,
              rentalUuid: args.rentalUuid),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    LocalActivityDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<LocalActivityDetailsPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i20.LocalActivityDetailsPage(
              key: args.key,
              localActivityUuid: args.localActivityUuid,
              myHomesFormBloc: args.myHomesFormBloc),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivityDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivityDetailsPageRouteArgs>();
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: _i21.MyLocalActivityDetailsPage(
              key: args.key, localActivityUuid: args.localActivityUuid),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    WalletPageRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i22.WalletPage(),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MonitorizeFeesPageRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i23.MonitorizeFeesPage(),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    MyLocalActivitiesPageRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i24.MyLocalActivitiesPage(),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    NewLocalAcitvityPageRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i25.NewLocalAcitvityPage(),
          fullscreenDialog: true);
    },
    CategorySelectionPageRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i26.CategorySelectionPage(),
          fullscreenDialog: true);
    },
    MyLocalActivitiesFormRoute.name: (routeData) {
      final args = routeData.argsAs<MyLocalActivitiesFormRouteArgs>(
          orElse: () => const MyLocalActivitiesFormRouteArgs());
      return _i31.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i27.MyLocalActivitiesForm(
              key: args.key, editedActivity: args.editedActivity),
          fullscreenDialog: true);
    },
    TransactionHistoryPageRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i28.TransactionHistoryPage(),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    SendTokensPageRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i29.SendTokensPage(),
          transitionsBuilder: _i31.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 150,
          opaque: true,
          barrierDismissible: false);
    },
    TestPageRoute.name: (routeData) {
      return _i31.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i30.TestPage(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i31.RouteConfig> get routes => [
        _i31.RouteConfig(SplashPageRoute.name, path: '/'),
        _i31.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i31.RouteConfig(RolePageRoute.name, path: '/role-page'),
        _i31.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i31.RouteConfig(DisputesPageRoute.name, path: '/disputes-page'),
        _i31.RouteConfig(HomesPageRoute.name, path: '/homes-page'),
        _i31.RouteConfig(MyHomesFormRoute.name, path: '/my-homes-form'),
        _i31.RouteConfig(ImagesViewerPageRoute.name,
            path: '/images-viewer-page'),
        _i31.RouteConfig(RentAHomePageRoute.name, path: '/rent-ahome-page'),
        _i31.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i31.RouteConfig(LocalActivitiesPageRoute.name,
            path: '/local-activities-page'),
        _i31.RouteConfig(CategoriesPageRoute.name, path: '/categories-page'),
        _i31.RouteConfig(RewardUserPageRoute.name, path: '/reward-user-page'),
        _i31.RouteConfig(StartDisputesPageRoute.name,
            path: '/start-disputes-page'),
        _i31.RouteConfig(DisputeDetailsPageRoute.name,
            path: '/dispute-details-page'),
        _i31.RouteConfig(DisputesListPageRoute.name,
            path: '/disputes-list-page'),
        _i31.RouteConfig(ProblemsWithPaymentsPageRoute.name,
            path: '/problems-with-payments-page'),
        _i31.RouteConfig(GeneralDisputesPageRoute.name,
            path: '/general-disputes-page'),
        _i31.RouteConfig(HomeDetailsPageRoute.name, path: '/home-details-page'),
        _i31.RouteConfig(LocalActivityDetailsPageRoute.name,
            path: '/local-activity-details-page'),
        _i31.RouteConfig(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page'),
        _i31.RouteConfig(WalletPageRoute.name, path: '/wallet-page'),
        _i31.RouteConfig(MonitorizeFeesPageRoute.name,
            path: '/monitorize-fees-page'),
        _i31.RouteConfig(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page'),
        _i31.RouteConfig(NewLocalAcitvityPageRoute.name,
            path: '/new-local-acitvity-page'),
        _i31.RouteConfig(CategorySelectionPageRoute.name,
            path: '/category-selection-page'),
        _i31.RouteConfig(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form'),
        _i31.RouteConfig(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page'),
        _i31.RouteConfig(SendTokensPageRoute.name, path: '/send-tokens-page'),
        _i31.RouteConfig(TestPageRoute.name, path: '/test-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i31.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i31.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RolePage]
class RolePageRoute extends _i31.PageRouteInfo<void> {
  const RolePageRoute() : super(RolePageRoute.name, path: '/role-page');

  static const String name = 'RolePageRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i31.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i5.DisputesPage]
class DisputesPageRoute extends _i31.PageRouteInfo<void> {
  const DisputesPageRoute()
      : super(DisputesPageRoute.name, path: '/disputes-page');

  static const String name = 'DisputesPageRoute';
}

/// generated route for
/// [_i6.HomesPage]
class HomesPageRoute extends _i31.PageRouteInfo<HomesPageRouteArgs> {
  HomesPageRoute({_i32.Key? key, String? activityUuid})
      : super(HomesPageRoute.name,
            path: '/homes-page',
            args: HomesPageRouteArgs(key: key, activityUuid: activityUuid));

  static const String name = 'HomesPageRoute';
}

class HomesPageRouteArgs {
  const HomesPageRouteArgs({this.key, this.activityUuid});

  final _i32.Key? key;

  final String? activityUuid;

  @override
  String toString() {
    return 'HomesPageRouteArgs{key: $key, activityUuid: $activityUuid}';
  }
}

/// generated route for
/// [_i7.MyHomesForm]
class MyHomesFormRoute extends _i31.PageRouteInfo<MyHomesFormRouteArgs> {
  MyHomesFormRoute({_i32.Key? key, _i33.Home? editedHome})
      : super(MyHomesFormRoute.name,
            path: '/my-homes-form',
            args: MyHomesFormRouteArgs(key: key, editedHome: editedHome));

  static const String name = 'MyHomesFormRoute';
}

class MyHomesFormRouteArgs {
  const MyHomesFormRouteArgs({this.key, this.editedHome});

  final _i32.Key? key;

  final _i33.Home? editedHome;

  @override
  String toString() {
    return 'MyHomesFormRouteArgs{key: $key, editedHome: $editedHome}';
  }
}

/// generated route for
/// [_i8.ImagesViewerPage]
class ImagesViewerPageRoute
    extends _i31.PageRouteInfo<ImagesViewerPageRouteArgs> {
  ImagesViewerPageRoute(
      {_i32.Key? key, required List<String> images, required int initialIndex})
      : super(ImagesViewerPageRoute.name,
            path: '/images-viewer-page',
            args: ImagesViewerPageRouteArgs(
                key: key, images: images, initialIndex: initialIndex));

  static const String name = 'ImagesViewerPageRoute';
}

class ImagesViewerPageRouteArgs {
  const ImagesViewerPageRouteArgs(
      {this.key, required this.images, required this.initialIndex});

  final _i32.Key? key;

  final List<String> images;

  final int initialIndex;

  @override
  String toString() {
    return 'ImagesViewerPageRouteArgs{key: $key, images: $images, initialIndex: $initialIndex}';
  }
}

/// generated route for
/// [_i9.RentAHomePage]
class RentAHomePageRoute extends _i31.PageRouteInfo<RentAHomePageRouteArgs> {
  RentAHomePageRoute({_i32.Key? key, String? location})
      : super(RentAHomePageRoute.name,
            path: '/rent-ahome-page',
            args: RentAHomePageRouteArgs(key: key, location: location));

  static const String name = 'RentAHomePageRoute';
}

class RentAHomePageRouteArgs {
  const RentAHomePageRouteArgs({this.key, this.location});

  final _i32.Key? key;

  final String? location;

  @override
  String toString() {
    return 'RentAHomePageRouteArgs{key: $key, location: $location}';
  }
}

/// generated route for
/// [_i10.ProfilePage]
class ProfilePageRoute extends _i31.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(ProfilePageRoute.name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i11.LocalActivitiesPage]
class LocalActivitiesPageRoute
    extends _i31.PageRouteInfo<LocalActivitiesPageRouteArgs> {
  LocalActivitiesPageRoute(
      {_i32.Key? key,
      required _i34.MyHomesFormBloc myHomesFormBloc,
      required _i35.ActivityCategory activityCategory})
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

  final _i32.Key? key;

  final _i34.MyHomesFormBloc myHomesFormBloc;

  final _i35.ActivityCategory activityCategory;

  @override
  String toString() {
    return 'LocalActivitiesPageRouteArgs{key: $key, myHomesFormBloc: $myHomesFormBloc, activityCategory: $activityCategory}';
  }
}

/// generated route for
/// [_i12.CategoriesPage]
class CategoriesPageRoute extends _i31.PageRouteInfo<CategoriesPageRouteArgs> {
  CategoriesPageRoute(
      {_i32.Key? key, required _i34.MyHomesFormBloc myHomesFormBloc})
      : super(CategoriesPageRoute.name,
            path: '/categories-page',
            args: CategoriesPageRouteArgs(
                key: key, myHomesFormBloc: myHomesFormBloc));

  static const String name = 'CategoriesPageRoute';
}

class CategoriesPageRouteArgs {
  const CategoriesPageRouteArgs({this.key, required this.myHomesFormBloc});

  final _i32.Key? key;

  final _i34.MyHomesFormBloc myHomesFormBloc;

  @override
  String toString() {
    return 'CategoriesPageRouteArgs{key: $key, myHomesFormBloc: $myHomesFormBloc}';
  }
}

/// generated route for
/// [_i13.RewardUserPage]
class RewardUserPageRoute extends _i31.PageRouteInfo<RewardUserPageRouteArgs> {
  RewardUserPageRoute(
      {_i32.Key? key,
      required _i36.DomainUser user,
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

  final _i32.Key? key;

  final _i36.DomainUser user;

  final String routeNameToPopUntil;

  @override
  String toString() {
    return 'RewardUserPageRouteArgs{key: $key, user: $user, routeNameToPopUntil: $routeNameToPopUntil}';
  }
}

/// generated route for
/// [_i14.StartDisputesPage]
class StartDisputesPageRoute
    extends _i31.PageRouteInfo<StartDisputesPageRouteArgs> {
  StartDisputesPageRoute({_i32.Key? key, String? rentalUuid, String? homeUuid})
      : super(StartDisputesPageRoute.name,
            path: '/start-disputes-page',
            args: StartDisputesPageRouteArgs(
                key: key, rentalUuid: rentalUuid, homeUuid: homeUuid));

  static const String name = 'StartDisputesPageRoute';
}

class StartDisputesPageRouteArgs {
  const StartDisputesPageRouteArgs({this.key, this.rentalUuid, this.homeUuid});

  final _i32.Key? key;

  final String? rentalUuid;

  final String? homeUuid;

  @override
  String toString() {
    return 'StartDisputesPageRouteArgs{key: $key, rentalUuid: $rentalUuid, homeUuid: $homeUuid}';
  }
}

/// generated route for
/// [_i15.DisputeDetailsPage]
class DisputeDetailsPageRoute
    extends _i31.PageRouteInfo<DisputeDetailsPageRouteArgs> {
  DisputeDetailsPageRoute(
      {_i32.Key? key,
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

  final _i32.Key? key;

  final String disputeUuid;

  final DateTime creationDate;

  @override
  String toString() {
    return 'DisputeDetailsPageRouteArgs{key: $key, disputeUuid: $disputeUuid, creationDate: $creationDate}';
  }
}

/// generated route for
/// [_i16.DisputesListPage]
class DisputesListPageRoute
    extends _i31.PageRouteInfo<DisputesListPageRouteArgs> {
  DisputesListPageRoute({_i32.Key? key, required bool privateMode})
      : super(DisputesListPageRoute.name,
            path: '/disputes-list-page',
            args:
                DisputesListPageRouteArgs(key: key, privateMode: privateMode));

  static const String name = 'DisputesListPageRoute';
}

class DisputesListPageRouteArgs {
  const DisputesListPageRouteArgs({this.key, required this.privateMode});

  final _i32.Key? key;

  final bool privateMode;

  @override
  String toString() {
    return 'DisputesListPageRouteArgs{key: $key, privateMode: $privateMode}';
  }
}

/// generated route for
/// [_i17.ProblemsWithPaymentsPage]
class ProblemsWithPaymentsPageRoute
    extends _i31.PageRouteInfo<ProblemsWithPaymentsPageRouteArgs> {
  ProblemsWithPaymentsPageRoute({_i32.Key? key, required _i37.Dispute dispute})
      : super(ProblemsWithPaymentsPageRoute.name,
            path: '/problems-with-payments-page',
            args:
                ProblemsWithPaymentsPageRouteArgs(key: key, dispute: dispute));

  static const String name = 'ProblemsWithPaymentsPageRoute';
}

class ProblemsWithPaymentsPageRouteArgs {
  const ProblemsWithPaymentsPageRouteArgs({this.key, required this.dispute});

  final _i32.Key? key;

  final _i37.Dispute dispute;

  @override
  String toString() {
    return 'ProblemsWithPaymentsPageRouteArgs{key: $key, dispute: $dispute}';
  }
}

/// generated route for
/// [_i18.GeneralDisputesPage]
class GeneralDisputesPageRoute
    extends _i31.PageRouteInfo<GeneralDisputesPageRouteArgs> {
  GeneralDisputesPageRoute({_i32.Key? key, required _i37.Dispute dispute})
      : super(GeneralDisputesPageRoute.name,
            path: '/general-disputes-page',
            args: GeneralDisputesPageRouteArgs(key: key, dispute: dispute));

  static const String name = 'GeneralDisputesPageRoute';
}

class GeneralDisputesPageRouteArgs {
  const GeneralDisputesPageRouteArgs({this.key, required this.dispute});

  final _i32.Key? key;

  final _i37.Dispute dispute;

  @override
  String toString() {
    return 'GeneralDisputesPageRouteArgs{key: $key, dispute: $dispute}';
  }
}

/// generated route for
/// [_i19.HomeDetailsPage]
class HomeDetailsPageRoute
    extends _i31.PageRouteInfo<HomeDetailsPageRouteArgs> {
  HomeDetailsPageRoute(
      {_i32.Key? key, required String homeUuid, required String rentalUuid})
      : super(HomeDetailsPageRoute.name,
            path: '/home-details-page',
            args: HomeDetailsPageRouteArgs(
                key: key, homeUuid: homeUuid, rentalUuid: rentalUuid));

  static const String name = 'HomeDetailsPageRoute';
}

class HomeDetailsPageRouteArgs {
  const HomeDetailsPageRouteArgs(
      {this.key, required this.homeUuid, required this.rentalUuid});

  final _i32.Key? key;

  final String homeUuid;

  final String rentalUuid;

  @override
  String toString() {
    return 'HomeDetailsPageRouteArgs{key: $key, homeUuid: $homeUuid, rentalUuid: $rentalUuid}';
  }
}

/// generated route for
/// [_i20.LocalActivityDetailsPage]
class LocalActivityDetailsPageRoute
    extends _i31.PageRouteInfo<LocalActivityDetailsPageRouteArgs> {
  LocalActivityDetailsPageRoute(
      {_i32.Key? key,
      required String localActivityUuid,
      _i34.MyHomesFormBloc? myHomesFormBloc})
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
      {this.key, required this.localActivityUuid, this.myHomesFormBloc});

  final _i32.Key? key;

  final String localActivityUuid;

  final _i34.MyHomesFormBloc? myHomesFormBloc;

  @override
  String toString() {
    return 'LocalActivityDetailsPageRouteArgs{key: $key, localActivityUuid: $localActivityUuid, myHomesFormBloc: $myHomesFormBloc}';
  }
}

/// generated route for
/// [_i21.MyLocalActivityDetailsPage]
class MyLocalActivityDetailsPageRoute
    extends _i31.PageRouteInfo<MyLocalActivityDetailsPageRouteArgs> {
  MyLocalActivityDetailsPageRoute(
      {_i32.Key? key, required String localActivityUuid})
      : super(MyLocalActivityDetailsPageRoute.name,
            path: '/my-local-activity-details-page',
            args: MyLocalActivityDetailsPageRouteArgs(
                key: key, localActivityUuid: localActivityUuid));

  static const String name = 'MyLocalActivityDetailsPageRoute';
}

class MyLocalActivityDetailsPageRouteArgs {
  const MyLocalActivityDetailsPageRouteArgs(
      {this.key, required this.localActivityUuid});

  final _i32.Key? key;

  final String localActivityUuid;

  @override
  String toString() {
    return 'MyLocalActivityDetailsPageRouteArgs{key: $key, localActivityUuid: $localActivityUuid}';
  }
}

/// generated route for
/// [_i22.WalletPage]
class WalletPageRoute extends _i31.PageRouteInfo<void> {
  const WalletPageRoute() : super(WalletPageRoute.name, path: '/wallet-page');

  static const String name = 'WalletPageRoute';
}

/// generated route for
/// [_i23.MonitorizeFeesPage]
class MonitorizeFeesPageRoute extends _i31.PageRouteInfo<void> {
  const MonitorizeFeesPageRoute()
      : super(MonitorizeFeesPageRoute.name, path: '/monitorize-fees-page');

  static const String name = 'MonitorizeFeesPageRoute';
}

/// generated route for
/// [_i24.MyLocalActivitiesPage]
class MyLocalActivitiesPageRoute extends _i31.PageRouteInfo<void> {
  const MyLocalActivitiesPageRoute()
      : super(MyLocalActivitiesPageRoute.name,
            path: '/my-local-activities-page');

  static const String name = 'MyLocalActivitiesPageRoute';
}

/// generated route for
/// [_i25.NewLocalAcitvityPage]
class NewLocalAcitvityPageRoute extends _i31.PageRouteInfo<void> {
  const NewLocalAcitvityPageRoute()
      : super(NewLocalAcitvityPageRoute.name, path: '/new-local-acitvity-page');

  static const String name = 'NewLocalAcitvityPageRoute';
}

/// generated route for
/// [_i26.CategorySelectionPage]
class CategorySelectionPageRoute extends _i31.PageRouteInfo<void> {
  const CategorySelectionPageRoute()
      : super(CategorySelectionPageRoute.name,
            path: '/category-selection-page');

  static const String name = 'CategorySelectionPageRoute';
}

/// generated route for
/// [_i27.MyLocalActivitiesForm]
class MyLocalActivitiesFormRoute
    extends _i31.PageRouteInfo<MyLocalActivitiesFormRouteArgs> {
  MyLocalActivitiesFormRoute(
      {_i32.Key? key, _i35.LocalActivity? editedActivity})
      : super(MyLocalActivitiesFormRoute.name,
            path: '/my-local-activities-form',
            args: MyLocalActivitiesFormRouteArgs(
                key: key, editedActivity: editedActivity));

  static const String name = 'MyLocalActivitiesFormRoute';
}

class MyLocalActivitiesFormRouteArgs {
  const MyLocalActivitiesFormRouteArgs({this.key, this.editedActivity});

  final _i32.Key? key;

  final _i35.LocalActivity? editedActivity;

  @override
  String toString() {
    return 'MyLocalActivitiesFormRouteArgs{key: $key, editedActivity: $editedActivity}';
  }
}

/// generated route for
/// [_i28.TransactionHistoryPage]
class TransactionHistoryPageRoute extends _i31.PageRouteInfo<void> {
  const TransactionHistoryPageRoute()
      : super(TransactionHistoryPageRoute.name,
            path: '/transaction-history-page');

  static const String name = 'TransactionHistoryPageRoute';
}

/// generated route for
/// [_i29.SendTokensPage]
class SendTokensPageRoute extends _i31.PageRouteInfo<void> {
  const SendTokensPageRoute()
      : super(SendTokensPageRoute.name, path: '/send-tokens-page');

  static const String name = 'SendTokensPageRoute';
}

/// generated route for
/// [_i30.TestPage]
class TestPageRoute extends _i31.PageRouteInfo<void> {
  const TestPageRoute() : super(TestPageRoute.name, path: '/test-page');

  static const String name = 'TestPageRoute';
}
