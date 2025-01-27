import 'package:clean_architecture_example/features/details/data/models/succeed_user_details_model.dart';
import 'package:clean_architecture_example/features/details/domain/entity/succeed_user_details_entity.dart';

class SucceedUserDetailsMapper {
  SucceedUserDetailsMapper._();

  static SucceedUserDetailsEntity fromModel(SucceedUserDetailsModel model) {
    return SucceedUserDetailsEntity(
      userPhoneNumber: model.userPhoneNumber,
      userNationalCode: model.userNationalCode,
      userLastName: model.userLastName,
      userFirstName: model.userFirstName,
      userAccountBalance: model.userAccountBalance,
    );
  }

  static SucceedUserDetailsModel toModel(SucceedUserDetailsEntity entity) {
    return SucceedUserDetailsModel(
      userPhoneNumber: entity.userPhoneNumber,
      userNationalCode: entity.userNationalCode,
      userLastName: entity.userLastName,
      userFirstName: entity.userFirstName,
      userAccountBalance: entity.userAccountBalance,
    );
  }

  static SucceedUserDetailsModel fromJsonToModel(Map<String, dynamic> json) {
    return SucceedUserDetailsModel.fromJson(json);
  }

  static SucceedUserDetailsEntity fromJsonToEntity(Map<String, dynamic> json) {
    return SucceedUserDetailsMapper.fromModel(
      SucceedUserDetailsModel.fromJson(json),
    );
  }
}
