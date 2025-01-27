import 'package:clean_architecture_example/core/base/services/mocked_api_service.dart';
import 'package:clean_architecture_example/features/details/data/repositories/user_details_repository_impl.dart';
import 'package:clean_architecture_example/features/details/data/services/base_user_details_service.dart';
import 'package:clean_architecture_example/features/details/data/services/mock_user_details_service.dart';
import 'package:clean_architecture_example/features/details/data/services/real_user_details_service.dart';
import 'package:clean_architecture_example/features/details/domain/repositories/user_details_repository.dart';
import 'package:clean_architecture_example/features/details/domain/usecases/user_details_usecase.dart';
import 'package:get_it/get_it.dart';

void detailsSetUpDependencies() {
  GetIt.instance.registerLazySingleton<BaseUserDetailsService>(
    () => MockApiService.switchToMockData(
      mock: MockUserDetailsService(),
      real: UserDetailsService(),
    ),
  );

  GetIt.instance.registerLazySingleton<UserDetailsRepository>(
    () => UserDetailsRepositoryImpl(GetIt.instance()),
  );

  GetIt.instance.registerLazySingleton<UserDetailsUseCase>(
    () => UserDetailsUseCase(GetIt.instance()),
  );
}
