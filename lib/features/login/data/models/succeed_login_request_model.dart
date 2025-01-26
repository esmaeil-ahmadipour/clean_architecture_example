import 'package:freezed_annotation/freezed_annotation.dart';

part 'succeed_login_request_model.freezed.dart';
part 'succeed_login_request_model.g.dart';

@freezed
class SucceedLoginRequestModel with _$SucceedLoginRequestModel {
  const factory SucceedLoginRequestModel({
    required String token,
   }) = _SucceedLoginRequestModel;

  factory SucceedLoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SucceedLoginRequestModelFromJson(json);
}
