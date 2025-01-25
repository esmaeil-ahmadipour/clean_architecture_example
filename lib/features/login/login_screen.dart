import 'package:clean_architecture_example/core/utils/storage_data/sharedprefrences.dart';
import 'package:clean_architecture_example/features/shared/keys/app_strings_keys.dart';
import 'package:clean_architecture_example/features/shared/keys/sharedpreferences_keys.dart';
import 'package:clean_architecture_example/features/shared/router/app_route_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStringsKeys.login)),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await SharedPreferencesUtil.saveBoolData(
              SharedPreferencesKeys.isLoggedIn,
              value: true,
            );
            context.go(AppRoute.details.fullPath);
          },
          child: Text(AppStringsKeys.login),
        ),
      ),
    );
  }
}
