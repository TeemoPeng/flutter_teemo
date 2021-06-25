
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Request{
  static const baseUrl = "https://xcx.daohexn.com/api/";
  Dio dio = Dio();

  get(url, data) async{
    Response response =  await dio.get(baseUrl + url, queryParameters: data);
    return this.interceptor(response);
  }

  post(url, data) async{
    Response response =  await dio.post(baseUrl + url, queryParameters: data);
    return this.interceptor(response);
  }

  put(url, data) async{
    Response response =  await dio.put(baseUrl + url, queryParameters: data);
    return this.interceptor(response);
  }

  delete(url, data) async{
    Response response =  await dio.delete(baseUrl + url, queryParameters: data);
    return this.interceptor(response);
  }

  /// 错误拦截
  interceptor(response){
    Object result = response.data['data'];
    int code = response.data['code'];
    switch (code) {
      case 200:
        /// 成功返回
        Fluttertoast.showToast(
          msg: "成功返回",
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
        );
        print('成功返回：$result');
        break;
      case 401:
        /// 未授权
        result = null;
        break;      
      case 404:
        /// 路径有误
        result = null;
        break;
      case 403:
        /// 禁止访问
        break;
      case 500: case 502: case 503: case 504:
        /// 服务器异常
        
        result = null;
        break;
      default:
        result = null;
        break;
    }
    return result;
  }
}