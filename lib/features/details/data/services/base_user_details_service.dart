import 'package:clean_architecture_example/core/base/base_service.dart';
import 'package:clean_architecture_example/features/details/data/params/user_details_params.dart';

abstract class BaseUserDetailsService
    extends BaseService<UserDetailsParams?, dynamic> {}
