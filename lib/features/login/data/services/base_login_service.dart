import 'package:clean_architecture_example/core/base/base_service.dart';
import 'package:clean_architecture_example/features/login/data/params/login_request_params.dart';

abstract class BaseLoginService
    extends BaseService<LoginRequestParams?, dynamic> {}
