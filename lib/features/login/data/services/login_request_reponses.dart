import 'package:dio/dio.dart';

class LoginRequestResponse {
  LoginRequestResponse._();
  static Response<dynamic> succeedResponse = Response(
    requestOptions: RequestOptions(),
    statusCode: 200,
    statusMessage: 'succeed',
    data: {
      'token': 'ey6573845hjbnwe67utiokhnjkl43rsdfyuirrhjgwedfg98',
    },
  );

  static Response<dynamic> errorResponse = Response(
    requestOptions: RequestOptions(),
    statusCode: 400,
    statusMessage: 'error',
  );
}
