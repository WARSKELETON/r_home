import 'package:auto_route/auto_route.dart';
import 'package:r_home/presentation/sign_in/sign_in_page.dart';
import 'package:r_home/presentation/splash/splash_page.dart';
import 'package:r_home/presentation/splash/test_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SignInPage, initial: true),
    CustomRoute(page: SplashPage),
    CustomRoute(page: TestPage)
  ],
)
class $MyRouter {}
