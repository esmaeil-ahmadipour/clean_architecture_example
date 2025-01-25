import 'package:clean_architecture_example/features/details/details_screen.dart';
import 'package:clean_architecture_example/features/login/login_screen.dart';
import 'package:clean_architecture_example/features/shared/router/app_route_enum.dart';
import 'package:clean_architecture_example/features/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouteManager {
  AppRouteManager._();
  static final GoRouter router = GoRouter(
    initialLocation: AppRoute.splash.fullPath,
    routes: [
      GoRoute(
        path: AppRoute.splash.fullPath,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: AppRoute.login.fullPath,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: AppRoute.details.fullPath,
        builder: (context, state) => DetailsScreen(),
      ),
    ],
  );
}
