import 'package:clean_architecture_example/features/login/domain/usecases/login_request_usecase.dart';
import 'package:clean_architecture_example/features/login/presentation/bloc/api/login_request_bloc.dart';
import 'package:clean_architecture_example/features/login/presentation/screen/login_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class LoginRouter {
  LoginRouter._();
  static final loginRouter = GoRoute(
    path: routePath,
    builder: (context, state) => MultiBlocProvider(
      providers: [
        BlocProvider<LoginRequestBloc>(
          create: (_) => LoginRequestBloc(
            GetIt.instance<LoginRequestUseCase>(),
          ),
        ),
      ],
      child: LoginScreen(),
    ),
  );

  static const routePath = '/login';
}
