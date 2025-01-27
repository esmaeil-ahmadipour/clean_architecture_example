import 'package:clean_architecture_example/core/constants/sharedpreferences_keys.dart';
import 'package:clean_architecture_example/core/utils/storage_data/sharedprefrences.dart';
import 'package:clean_architecture_example/features/details/core/router/router.dart';
import 'package:clean_architecture_example/features/login/core/router/router.dart';
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
    final storedToken = SharedPreferencesUtil.getData(
      SharedPreferencesKeys.storedToken,
    );
    Future.delayed(Duration(seconds: 3), () {
      changeRoute(isLoggedIn: !(storedToken == null || storedToken! == ''));
    });
  }

  void changeRoute({required bool? isLoggedIn}) {
    if (isLoggedIn == true) {
      context.go(UserDetailsRouter.routePath);
    } else {
      context.go(LoginRouter.routePath);
    }
  }
}
