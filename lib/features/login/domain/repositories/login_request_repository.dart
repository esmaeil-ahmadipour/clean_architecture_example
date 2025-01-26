import 'package:clean_architecture_example/core/base/data/error_response_model.dart';
import 'package:clean_architecture_example/core/base/data_sources/remote_data_source.dart';
import 'package:clean_architecture_example/features/login/data/params/login_request_params.dart';
import 'package:clean_architecture_example/features/login/domain/entity/succeed_login_request_entity.dart';
import 'package:dartz/dartz.dart';

// ignore_for_file: one_member_abstracts
abstract class LoginRequestRepository {
  Future<
      Either<RemoteDataState<ErrorResponseModel>,
          RemoteDataState<SucceedLoginRequestEntity>>> request({
    LoginRequestParams? params,
  });
}
