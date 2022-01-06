import 'package:auto_route/auto_route.dart';
import 'package:r_home/presentation/home/home_page.dart';
import 'package:r_home/presentation/profile/profile_page.dart';
import 'package:r_home/presentation/profile/send_tokens_page.dart';
import 'package:r_home/presentation/profile/transaction_history_page.dart';
import 'package:r_home/presentation/profile/wallet_page.dart';
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
    CustomRoute(page: ProfilePage),
    CustomRoute(page: WalletPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: TransactionHistoryPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: SendTokensPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 150),
    CustomRoute(page: TestPage)
  ],
)
class $MyRouter {}
