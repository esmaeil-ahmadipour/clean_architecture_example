import 'package:clean_architecture_example/core/base/services/mocked_api_service.dart';
import 'package:clean_architecture_example/features/login/data/repositories/login_request_repository_impl.dart';
import 'package:clean_architecture_example/features/login/data/services/base_login_service.dart';
import 'package:clean_architecture_example/features/login/data/services/mock_login_service.dart';
import 'package:clean_architecture_example/features/login/data/services/real_login_service.dart';
import 'package:clean_architecture_example/features/login/domain/repositories/login_request_repository.dart';
import 'package:clean_architecture_example/features/login/domain/usecases/login_request_usecase.dart';
import 'package:get_it/get_it.dart';

void loginSetUpDependencies() {
  GetIt.instance.registerLazySingleton<BaseLoginService>(
    () => MockApiService.switchToMockData(
      mock: MockLoginService(),
      real: LoginService(),
    ),
  );

  GetIt.instance.registerLazySingleton<LoginRequestRepository>(
    () => LoginRequestRepositoryImpl(GetIt.instance()),
  );

  GetIt.instance.registerLazySingleton<LoginRequestUseCase>(
    () => LoginRequestUseCase(GetIt.instance()),
  );
}
