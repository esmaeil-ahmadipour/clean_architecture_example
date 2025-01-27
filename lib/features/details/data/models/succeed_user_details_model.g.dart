// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'succeed_user_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SucceedUserDetailsModelImpl _$$SucceedUserDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SucceedUserDetailsModelImpl(
      userFirstName: json['userFirstName'] as String,
      userLastName: json['userLastName'] as String,
      userNationalCode: json['userNationalCode'] as String,
      userPhoneNumber: json['userPhoneNumber'] as String,
      userAccountBalance: (json['userAccountBalance'] as num).toInt(),
    );

Map<String, dynamic> _$$SucceedUserDetailsModelImplToJson(
        _$SucceedUserDetailsModelImpl instance) =>
    <String, dynamic>{
      'userFirstName': instance.userFirstName,
      'userLastName': instance.userLastName,
      'userNationalCode': instance.userNationalCode,
      'userPhoneNumber': instance.userPhoneNumber,
      'userAccountBalance': instance.userAccountBalance,
    };
