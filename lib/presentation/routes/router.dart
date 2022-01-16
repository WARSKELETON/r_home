import 'package:auto_route/auto_route.dart';
import 'package:r_home/presentation/disputes/dispute_details_page.dart';
import 'package:r_home/presentation/disputes/disputes_page.dart';
import 'package:r_home/presentation/disputes/disputes_list_page.dart';
import 'package:r_home/presentation/disputes/widgets/images_viewer_page.dart';
import 'package:r_home/presentation/homes/home_details_page.dart';
import 'package:r_home/presentation/homes/homes_page.dart';
import 'package:r_home/presentation/my_homes_form/categories_page.dart';
import 'package:r_home/presentation/my_homes_form/local_activity_details_page.dart';
import 'package:r_home/presentation/my_homes_form/local_activities_page.dart';
import 'package:r_home/presentation/profile/monitorize_fees_page.dart';
import 'package:r_home/presentation/reward_user/reward_user_page.dart';
import 'package:r_home/presentation/start_dispute_forms/general_disputes_page.dart';
import 'package:r_home/presentation/start_dispute_forms/problems_with_payments_page.dart';
import 'package:r_home/presentation/disputes/start_dispute_page.dart';
import 'package:r_home/presentation/home/home_page.dart';
import 'package:r_home/presentation/my_homes_form/my_homes_form.dart';
import 'package:r_home/presentation/my_local_activities_form/category_selection_page.dart';
import 'package:r_home/presentation/my_local_activities/my_local_activities_details_page.dart';
import 'package:r_home/presentation/my_local_activities/my_local_activities_page.dart';
import 'package:r_home/presentation/my_local_activities_form/my_local_activities_form.dart';
import 'package:r_home/presentation/my_local_activities_form/new_local_activity_page.dart';
import 'package:r_home/presentation/profile/profile_page.dart';
import 'package:r_home/presentation/profile/send_tokens_page.dart';
import 'package:r_home/presentation/profile/transaction_history_page.dart';
import 'package:r_home/presentation/profile/wallet_page.dart';
import 'package:r_home/presentation/rent_a_home/rent_a_home_page.dart';
import 'package:r_home/presentation/sign_in/role_page.dart';
import 'package:r_home/presentation/sign_in/sign_in_page.dart';
import 'package:r_home/presentation/splash/splash_page.dart';
import 'package:r_home/presentation/splash/test_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: RolePage),
    CustomRoute(page: HomePage),
    CustomRoute(page: DisputesPage),
    CustomRoute(page: HomesPage),
    MaterialRoute(page: MyHomesForm, fullscreenDialog: true),
    MaterialRoute(page: ImagesViewerPage, fullscreenDialog: true),
    CustomRoute(page: RentAHomePage),
    CustomRoute(page: ProfilePage),
    CustomRoute(page: LocalActivitiesPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: CategoriesPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: RewardUserPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: StartDisputesPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: DisputeDetailsPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: DisputesListPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: ProblemsWithPaymentsPage, fullscreenDialog: true),
    CustomRoute(page: GeneralDisputesPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: HomeDetailsPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: LocalActivityDetailsPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: MyLocalActivityDetailsPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: WalletPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: MonitorizeFeesPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: MyLocalActivitiesPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    MaterialRoute(page: NewLocalAcitvityPage, fullscreenDialog: true),
    MaterialRoute(page: CategorySelectionPage, fullscreenDialog: true),
    MaterialRoute(page: MyLocalActivitiesForm, fullscreenDialog: true),
    CustomRoute(page: TransactionHistoryPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: SendTokensPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: TestPage)
  ],
)
class $MyRouter {}
