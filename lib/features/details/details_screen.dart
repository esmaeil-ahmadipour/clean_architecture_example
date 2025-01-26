import 'package:clean_architecture_example/core/constants/app_strings_keys.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStringsKeys.details)),
      body: Center(
        child: Text(
          '${AppStringsKeys.details} ${AppStringsKeys.screen}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
