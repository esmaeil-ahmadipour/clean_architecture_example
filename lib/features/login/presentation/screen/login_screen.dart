import 'package:clean_architecture_example/features/login/presentation/section/form_section.dart';
import 'package:clean_architecture_example/features/shared/keys/app_strings_keys.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStringsKeys.login)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FormSection(),
      ),
    );
  }
}
