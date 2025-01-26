part of 'login_request_bloc.dart';

@freezed
class LoginRequestState with _$LoginRequestState {
  const factory LoginRequestState.initial() = _Initial;

  const factory LoginRequestState.loading() = _Loading;
  const factory LoginRequestState.loaded({
    required SucceedLoginRequestEntity succeed,
  }) = _Loaded;

  const factory LoginRequestState.error({
    required ErrorResponseModel error,
  }) = _Error;
}
