import 'package:clean_architecture_example/core/base/services/mocked_api_service.dart';
import 'package:clean_architecture_example/features/login/data/params/login_request_params.dart';
import 'package:clean_architecture_example/features/login/data/services/base_login_service.dart';
import 'package:clean_architecture_example/features/login/data/services/login_request_reponses.dart';
import 'package:dio/dio.dart';

class LoginService extends BaseLoginService {
  @override
  Future<Response<dynamic>> request(LoginRequestParams? params) async {
    return Future.delayed(
        const Duration(
          milliseconds: MockApiService.millisecondsDurationMockApiService,
        ), () {
      return LoginRequestResponse.succeedResponse;
    });
  }
}
