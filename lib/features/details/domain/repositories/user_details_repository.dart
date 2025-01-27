import 'package:clean_architecture_example/core/base/data/error_response_model.dart';
import 'package:clean_architecture_example/core/base/data_sources/remote_data_source.dart';
import 'package:clean_architecture_example/features/details/data/params/user_details_params.dart';
import 'package:clean_architecture_example/features/details/domain/entity/succeed_user_details_entity.dart';
import 'package:dartz/dartz.dart';

// ignore_for_file: one_member_abstracts
abstract class UserDetailsRepository {
  Future<
      Either<RemoteDataState<ErrorResponseModel>,
          RemoteDataState<SucceedUserDetailsEntity>>> request({
    UserDetailsParams? params,
  });
}
