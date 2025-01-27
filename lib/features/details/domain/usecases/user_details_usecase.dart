import 'package:clean_architecture_example/core/base/data/error_response_model.dart';
import 'package:clean_architecture_example/core/base/data_sources/remote_data_source.dart';
import 'package:clean_architecture_example/core/base/usecases/usecase.dart';
import 'package:clean_architecture_example/features/details/data/params/user_details_params.dart';
import 'package:clean_architecture_example/features/details/domain/entity/succeed_user_details_entity.dart';
import 'package:clean_architecture_example/features/details/domain/repositories/user_details_repository.dart';
import 'package:dartz/dartz.dart';

class UserDetailsUseCase
    implements
        UseCase<
            Either<RemoteDataState<ErrorResponseModel>,
                RemoteDataState<SucceedUserDetailsEntity>>,
            UserDetailsParams> {
  UserDetailsUseCase(this._userDetailsRepository);
  final UserDetailsRepository _userDetailsRepository;

  @override
  Future<
      Either<RemoteDataState<ErrorResponseModel>,
          RemoteDataState<SucceedUserDetailsEntity>>> call({
    UserDetailsParams? params,
  }) {
    return _userDetailsRepository.request(params: params);
  }
}
