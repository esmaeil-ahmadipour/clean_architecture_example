import 'package:dio/dio.dart';

class UserDetailsResponse {
  UserDetailsResponse._();
  static Response<dynamic> succeedResponse = Response(
    requestOptions: RequestOptions(),
    statusCode: 200,
    statusMessage: 'succeed',
    data: {
      'userFirstName': 'John',
      'userLastName': 'Doe',
      'userNationalCode': '123456789',
      'userPhoneNumber': '09123456789',
      'userAccountBalance': 1000,
    },
  );

  static Response<dynamic> errorResponse = Response(
    requestOptions: RequestOptions(),
    statusCode: 400,
    statusMessage: 'error',
  );
}
