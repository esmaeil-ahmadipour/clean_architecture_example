part of 'user_details_bloc.dart';

@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.updateResponse({
    required UserDetailsParams params,
  }) = _$UpdateResponse;

  const factory UserDetailsEvent.resetBloc() = _ResetBloc;
}
