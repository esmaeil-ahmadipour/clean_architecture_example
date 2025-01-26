import 'package:clean_architecture_example/features/login/data/models/succeed_login_request_model.dart';
import 'package:clean_architecture_example/features/login/domain/entity/succeed_login_request_entity.dart';

class SucceedLoginRequestMapper {
  SucceedLoginRequestMapper._();

  static SucceedLoginRequestEntity fromModel(SucceedLoginRequestModel model) {
    return SucceedLoginRequestEntity(
      token: model.token,
    );
  }

  static SucceedLoginRequestModel toModel(SucceedLoginRequestEntity entity) {
    return SucceedLoginRequestModel(
      token: entity.token,
    );
  }

  static SucceedLoginRequestModel fromJsonToModel(Map<String, dynamic> json) {
    return SucceedLoginRequestModel.fromJson(json);
  }

  static SucceedLoginRequestEntity fromJsonToEntity(Map<String, dynamic> json) {
    return SucceedLoginRequestMapper.fromModel(
      SucceedLoginRequestModel.fromJson(json),
    );
  }
}
