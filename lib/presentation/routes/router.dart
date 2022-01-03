import 'package:auto_route/auto_route.dart';
import 'package:r_home/presentation/splash/splash_page.dart';
import 'package:r_home/presentation/splash/test_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    CustomRoute(page: TestPage, transitionsBuilder: TransitionsBuilders.slideLeft, durationInMilliseconds: 100)
  ],
)
class $MyRouter {}