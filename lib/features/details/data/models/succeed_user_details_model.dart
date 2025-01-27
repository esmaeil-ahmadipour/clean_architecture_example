import 'package:freezed_annotation/freezed_annotation.dart';

part 'succeed_user_details_model.freezed.dart';
part 'succeed_user_details_model.g.dart';

@freezed
class SucceedUserDetailsModel with _$SucceedUserDetailsModel {
  const factory SucceedUserDetailsModel({
    required String userFirstName,
    required String userLastName,
    required String userNationalCode,
    required String userPhoneNumber,
    required int userAccountBalance,
  }) = _SucceedUserDetailsModel;

  factory SucceedUserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$SucceedUserDetailsModelFromJson(json);
}
