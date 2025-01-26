import 'package:clean_architecture_example/core/base/data/error_response_model.dart';
import 'package:clean_architecture_example/features/login/data/params/login_request_params.dart';
import 'package:clean_architecture_example/features/login/domain/entity/succeed_login_request_entity.dart';
import 'package:clean_architecture_example/features/login/domain/usecases/login_request_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_bloc.freezed.dart';
part 'login_request_event.dart';
part 'login_request_state.dart';

class LoginRequestBloc extends Bloc<LoginRequestEvent, LoginRequestState> {
  LoginRequestBloc(this._useCase) : super(const LoginRequestState.initial()) {
    on<LoginRequestEvent>(
      (event, emit) async {
        await event.when(
          updateResponse: (params) async {
            emit(const LoginRequestState.loading());
            final response = await _useCase(params: params);

            response.fold(
              (errorState) => emit(
                LoginRequestState.error(
                  error: errorState.remoteData!,
                ),
              ),
              (successState) => emit(
                LoginRequestState.loaded(
                  succeed: successState.remoteData!,
                ),
              ),
            );
          },
          resetBloc: () async => emit(const LoginRequestState.initial()),
        );
      },
    );
  }
  final LoginRequestUseCase _useCase;
}
