import 'package:clean_architecture_example/core/constants/sharedpreferences_keys.dart';
import 'package:clean_architecture_example/core/utils/storage_data/sharedprefrences.dart';
import 'package:clean_architecture_example/features/splash/core.router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StorageCleaner extends StatelessWidget {
  const StorageCleaner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        SharedPreferencesUtil.clearData(SharedPreferencesKeys.storedToken);
        context.go(SplashRouter.routePath);
      },
      child: Icon(Icons.sd_storage_outlined),
    );
  }
}
