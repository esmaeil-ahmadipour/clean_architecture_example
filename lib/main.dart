import 'package:clean_architecture_example/core/router/app_route_manager.dart';
import 'package:clean_architecture_example/core/utils/di/get_it.dart';
import 'package:clean_architecture_example/features/details/core/di/get_it.dart';
import 'package:clean_architecture_example/features/login/core/di/get_it.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupSharedPreferences();
  loginSetUpDependencies();
  detailsSetUpDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouteManager.router,
    );
  }
}
