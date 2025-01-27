import 'package:clean_architecture_example/core/constants/app_strings_keys.dart';
import 'package:clean_architecture_example/features/details/presentation/section/storage_cleaner_section.dart';
import 'package:clean_architecture_example/features/details/presentation/section/user_details_section.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: StorageCleaner(),
      appBar: AppBar(title: Text(AppStringsKeys.details)),
      body: UserDetailsSection(),
    );
  }
}
