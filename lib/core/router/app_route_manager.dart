import 'package:clean_architecture_example/features/details/core/router/router.dart';
import 'package:clean_architecture_example/features/login/core/router/router.dart';
import 'package:clean_architecture_example/features/splash/core.router/router.dart';
import 'package:go_router/go_router.dart';

class AppRouteManager {
  AppRouteManager._();
  static final GoRouter router = GoRouter(
    initialLocation: SplashRouter.routePath,
    routes: [
      SplashRouter.splashRouter,
      LoginRouter.loginRouter,
      UserDetailsRouter.userDetailsRouter,
    ],
  );
}
