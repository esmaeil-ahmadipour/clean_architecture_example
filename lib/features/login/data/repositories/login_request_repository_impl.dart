import 'package:clean_architecture_example/core/base/data/error_response_model.dart';
import 'package:clean_architecture_example/core/base/data_sources/remote_data_source.dart';
import 'package:clean_architecture_example/core/enums/api_error_type.dart';
import 'package:clean_architecture_example/core/extensions/status_check.dart';
import 'package:clean_architecture_example/features/login/data/mappers/succeed_login_request_mapper.dart';
import 'package:clean_architecture_example/features/login/data/params/login_request_params.dart';
import 'package:clean_architecture_example/features/login/data/services/base_login_service.dart';
import 'package:clean_architecture_example/features/login/domain/entity/succeed_login_request_entity.dart';
import 'package:clean_architecture_example/features/login/domain/repositories/login_request_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class LoginRequestRepositoryImpl implements LoginRequestRepository {
  const LoginRequestRepositoryImpl(this._service);
  final BaseLoginService _service;

  @override
  Future<
      Either<RemoteDataState<ErrorResponseModel>,
          RemoteDataState<SucceedLoginRequestEntity>>> request({
    LoginRequestParams? params,
  }) async {
    try {
      final response = await _service.request(null);

      if (response.data != null) {
        if (response.statusCode.isSucceed()) {
          final data = SucceedLoginRequestMapper.fromJsonToEntity(
            response.data! as Map<String, dynamic>,
          );
          final successResponse = RemoteDataSuccess<SucceedLoginRequestEntity>(
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
    } on Exception catch (e) {
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
