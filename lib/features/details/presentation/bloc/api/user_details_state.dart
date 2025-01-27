part of 'user_details_bloc.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState.initial() = _Initial;

  const factory UserDetailsState.loading() = _Loading;
  const factory UserDetailsState.loaded({
    required SucceedUserDetailsEntity succeed,
  }) = _Loaded;

  const factory UserDetailsState.error({
    required ErrorResponseModel error,
  }) = _Error;
}
