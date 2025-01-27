import 'package:clean_architecture_example/core/base/data/error_response_model.dart';
import 'package:clean_architecture_example/features/details/data/params/user_details_params.dart';
import 'package:clean_architecture_example/features/details/domain/entity/succeed_user_details_entity.dart';
import 'package:clean_architecture_example/features/details/domain/usecases/user_details_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_bloc.freezed.dart';
part 'user_details_event.dart';
part 'user_details_state.dart';

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  UserDetailsBloc(this._useCase) : super(const UserDetailsState.initial()) {
    on<UserDetailsEvent>(
      (event, emit) async {
        await event.when(
          updateResponse: (params) async {
            emit(const UserDetailsState.loading());
            final response = await _useCase(params: params);

            response.fold(
              (errorState) => emit(
                UserDetailsState.error(
                  error: errorState.remoteData!,
                ),
              ),
              (successState) => emit(
                UserDetailsState.loaded(
                  succeed: successState.remoteData!,
                ),
              ),
            );
          },
          resetBloc: () async => emit(const UserDetailsState.initial()),
        );
      },
    );
  }
  final UserDetailsUseCase _useCase;
}
