import 'package:dio/dio.dart';

// ignore_for_file: one_member_abstracts
abstract class BaseService<TReq, TRes> {
  Future<Response<TRes>> request(TReq? params);
}
