import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:to_do_expert/states.dart';
class DioHelper {

  static Dio dio=Dio(BaseOptions(baseUrl:"https://newsapi.org/",receiveDataWhenStatusError: true,),);

  static Future<Response> GetData(@required String url, @required Map<String,dynamic> query)async{
    return await dio.get(url,queryParameters: query);
  }
}