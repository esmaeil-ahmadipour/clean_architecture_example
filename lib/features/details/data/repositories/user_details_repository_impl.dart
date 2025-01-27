import 'package:clean_architecture_example/core/base/data/error_response_model.dart';
import 'package:clean_architecture_example/core/base/data_sources/remote_data_source.dart';
import 'package:clean_architecture_example/core/enums/api_error_type.dart';
import 'package:clean_architecture_example/core/extensions/status_check.dart';
import 'package:clean_architecture_example/features/details/data/mappers/succeed_user_details_mapper.dart';
import 'package:clean_architecture_example/features/details/data/params/user_details_params.dart';
import 'package:clean_architecture_example/features/details/data/services/base_user_details_service.dart';
import 'package:clean_architecture_example/features/details/domain/entity/succeed_user_details_entity.dart';
import 'package:clean_architecture_example/features/details/domain/repositories/user_details_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class UserDetailsRepositoryImpl implements UserDetailsRepository {
  const UserDetailsRepositoryImpl(this._service);
  final BaseUserDetailsService _service;

  @override
  Future<
      Either<RemoteDataState<ErrorResponseModel>,
          RemoteDataState<SucceedUserDetailsEntity>>> request({
    UserDetailsParams? params,
  }) async {
    try {
      final response = await _service.request(null);

      if (response.data != null) {
        if (response.statusCode.isSucceed()) {
          final data = SucceedUserDetailsMapper.fromJsonToEntity(
            response.data! as Map<String, dynamic>,
          );
          final successResponse = RemoteDataSuccess<SucceedUserDetailsEntity>(
            remoteData: data,
          );
          return Right(successResponse);
        } else {
          final errorResponse = ErrorResponseModel.fromJson(
            response.data! as Map<String, dynamic>,
          );
          final failureResponse =
              RemoteDataFailed<ErrorResponseModel>(remoteData: errorResponse);
          return Left(failureResponse);
        }
      } else {
        return Left(
          RemoteDataFailed<ErrorResponseModel>(
            remoteData: ErrorResponseModel(
              status: HandleError.unknown.statusCode,
              msg: 'No data found',
            ),
          ),
        );
      }
    } on DioException catch (e) {
      return Left(
        RemoteDataFailed<ErrorResponseModel>(
          remoteData: ErrorResponseModel(
            status: HandleError.network.statusCode,
            msg: '${HandleError.network.label} $e',
          ),
        ),
      );
    }
    // ignore: avoid_catching_errors
    on TypeError catch (e) {
      return Left(
        RemoteDataFailed<ErrorResponseModel>(
          remoteData: ErrorResponseModel(
            status: HandleError.dataTypeError.statusCode,
            msg: '${HandleError.dataTypeError.label} $e',
          ),
        ),
      );
    }
    // ignore: avoid_catches_without_on_clauses
    catch (e) {
      return Left(
        RemoteDataFailed<ErrorResponseModel>(
          remoteData: ErrorResponseModel(
            status: HandleError.unknown.statusCode,
            msg: '${HandleError.unknown.label} $e',
          ),
        ),
      );
    }
  }
}
