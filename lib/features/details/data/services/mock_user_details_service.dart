import 'package:clean_architecture_example/core/base/services/mocked_api_service.dart';
import 'package:clean_architecture_example/features/details/data/params/user_details_params.dart';
import 'package:clean_architecture_example/features/details/data/services/base_user_details_service.dart';
import 'package:clean_architecture_example/features/details/data/services/user_details_reponses.dart';
import 'package:dio/dio.dart';

class MockUserDetailsService extends BaseUserDetailsService with MockService {
  @override
  Future<Response<dynamic>> request(UserDetailsParams? params) async {
    return Future.delayed(
        const Duration(
          milliseconds: MockApiService.millisecondsDurationMockApiService,
        ), () {
      return UserDetailsResponse.succeedResponse;
    });
  }

  Future<Response<dynamic>> failRequest(UserDetailsParams? params) async {
    return Future.delayed(
        const Duration(
          milliseconds: MockApiService.millisecondsDurationMockApiService,
        ), () {
      return UserDetailsResponse.errorResponse;
    });
  }
}
