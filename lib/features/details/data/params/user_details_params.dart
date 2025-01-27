import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_details_params.freezed.dart';

part 'user_details_params.g.dart';

@freezed
class UserDetailsParams with _$UserDetailsParams {
  factory UserDetailsParams({
    String? token,
  }) = _UserDetailsParams;

  factory UserDetailsParams.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsParamsFromJson(json);
}
