import 'package:clean_architecture_example/core/constants/sharedpreferences_keys.dart';
import 'package:clean_architecture_example/core/router/app_route_enum.dart';
import 'package:clean_architecture_example/core/utils/storage_data/sharedprefrences.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade700,
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkUserStatus();
    });
  }

  Future<void> _checkUserStatus() async {
    final isLoggedIn = SharedPreferencesUtil.getBoolData(
      SharedPreferencesKeys.isLoggedIn,
    );
    Future.delayed(Duration(seconds: 3), () {
      changeRoute(isLoggedIn: isLoggedIn);
    });
  }

  void changeRoute({required bool? isLoggedIn}) {
    if (isLoggedIn == true) {
      context.go(AppRoute.details.fullPath);
    } else {
      context.go(AppRoute.login.fullPath);
    }
  }
}
