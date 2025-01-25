import 'package:clean_architecture_example/core/utils/storage_data/sharedprefrences.dart';
import 'package:clean_architecture_example/features/shared/keys/sharedpreferences_keys.dart';
import 'package:clean_architecture_example/features/shared/router/app_route_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkUserStatus();
  }

  Future<void> _checkUserStatus() async {
    final isLoggedIn = SharedPreferencesUtil.getBoolData(
      SharedPreferencesKeys.isLoggedIn,
    );

    changeRoute(isLoggedIn: isLoggedIn);
  }

  void changeRoute({required bool? isLoggedIn}) {
    if (isLoggedIn == true) {
      // If user is logged in, navigate to Details screen
      context.go(AppRoute.details.fullPath);
    } else {
      // If user is not logged in, navigate to Login screen
      context.go(AppRoute.login.fullPath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(), // Splash screen loading indicator
      ),
    );
  }
}
