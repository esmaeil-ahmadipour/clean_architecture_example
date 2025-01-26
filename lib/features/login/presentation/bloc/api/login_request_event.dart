part of 'login_request_bloc.dart';

@freezed
class LoginRequestEvent with _$LoginRequestEvent {
  const factory LoginRequestEvent.updateResponse({
    required LoginRequestParams params,
  }) = _$UpdateResponse;

  const factory LoginRequestEvent.resetBloc() = _ResetBloc;
}
