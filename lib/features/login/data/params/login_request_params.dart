import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_params.freezed.dart';

part 'login_request_params.g.dart';

 @freezed
class LoginRequestParams with _$LoginRequestParams {
  factory LoginRequestParams({
    String? mobilNumber,
  }) = _LoginRequestParams;

  factory LoginRequestParams.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestParamsFromJson(json);
}
