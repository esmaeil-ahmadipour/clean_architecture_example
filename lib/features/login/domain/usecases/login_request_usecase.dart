import 'package:clean_architecture_example/core/base/data/error_response_model.dart';
import 'package:clean_architecture_example/core/base/data_sources/remote_data_source.dart';
import 'package:clean_architecture_example/core/base/usecases/usecase.dart';
import 'package:clean_architecture_example/features/login/data/params/login_request_params.dart';
import 'package:clean_architecture_example/features/login/domain/entity/succeed_login_request_entity.dart';
import 'package:clean_architecture_example/features/login/domain/repositories/login_request_repository.dart';
import 'package:dartz/dartz.dart';

class LoginRequestUseCase
    implements
        UseCase<
            Either<RemoteDataState<ErrorResponseModel>,
                RemoteDataState<SucceedLoginRequestEntity>>,
            LoginRequestParams> {
  LoginRequestUseCase(this._loginRequestRepository);
  final LoginRequestRepository _loginRequestRepository;

  @override
  Future<
      Either<RemoteDataState<ErrorResponseModel>,
          RemoteDataState<SucceedLoginRequestEntity>>> call({
    LoginRequestParams? params,
  }) {
    return _loginRequestRepository.request(params: params);
  }
}
