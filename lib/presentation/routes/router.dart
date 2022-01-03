import 'package:auto_route/auto_route.dart';
import 'package:r_home/presentation/splash/splash_page.dart';
import 'package:r_home/presentation/splash/test_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(page: SplashPage, initial: true),
    CustomRoute(page: TestPage)
  ],
)
class $MyRouter {}
