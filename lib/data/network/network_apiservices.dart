import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mvvvmgetx/data/app_exception.dart';
import 'package:mvvvmgetx/data/network/base_apiservices.dart';
import 'package:http/http.dart' as http;

class networkservices extends BaseApi {
  @override
  Future<dynamic> getapi(String url) async {
    if(kDebugMode){
      print(url);
      
    }
    dynamic responsejson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 100));
      responsejson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on Requesttimout {
      throw Requesttimout();
    }
    return responsejson;
  }

  @override
  Future postapi(var data, String url)async {
   
  if(kDebugMode){
      print(url);
      print(data);
    }
    dynamic responsejson;
    try {
      final response =
          await http.post(Uri.parse(url)).timeout(const Duration(seconds: 100));
        
      responsejson = returnResponse(response);
      body:jsonDecode(data);
    } on SocketException {
      throw InternetException();
    } on Requesttimout {
      throw Requesttimout();
    }
    return responsejson;
  }

dynamic returnResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:
      dynamic responsejson = jsonDecode(response.body);
      return responsejson;
    case 400:
      throw InvalidUrl();
  }
  defult:
  throw FetchException('FetchException' + response.statusCode.toString());
}
}