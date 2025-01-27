import 'package:clean_architecture_example/features/splash/presentation/splash_screen.dart';
import 'package:go_router/go_router.dart';

class SplashRouter {
  SplashRouter._();
  static final splashRouter = GoRoute(
    path: routePath,
    builder: (context, state) => SplashScreen(),
  );
  static const routePath = '/splash';
}
