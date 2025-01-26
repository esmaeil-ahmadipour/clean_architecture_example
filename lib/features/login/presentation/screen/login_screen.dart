import 'package:clean_architecture_example/core/constants/app_strings_keys.dart';
import 'package:clean_architecture_example/features/login/domain/usecases/login_request_usecase.dart';
import 'package:clean_architecture_example/features/login/presentation/bloc/api/login_request_bloc.dart';
import 'package:clean_architecture_example/features/login/presentation/section/form_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStringsKeys.login)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<LoginRequestBloc>(
              create: (_) => LoginRequestBloc(
                GetIt.instance<LoginRequestUseCase>(),
              ),
            ),
          ],
          child: FormSection(),
        ),
      ),
    );
  }
}
