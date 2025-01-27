import 'package:clean_architecture_example/features/details/domain/usecases/user_details_usecase.dart';
import 'package:clean_architecture_example/features/details/presentation/bloc/api/user_details_bloc.dart';
import 'package:clean_architecture_example/features/details/presentation/screen/details_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class UserDetailsRouter {
  UserDetailsRouter._();
  static final userDetailsRouter = GoRoute(
    path: routePath,
    builder: (context, state) => MultiBlocProvider(
      providers: [
        BlocProvider<UserDetailsBloc>(
          create: (_) => UserDetailsBloc(
            GetIt.instance<UserDetailsUseCase>(),
          ),
        ),
      ],
      child: DetailsScreen(),
    ),
  );

  static const routePath = '/userDetails';
}
