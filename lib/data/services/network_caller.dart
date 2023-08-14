import 'dart:convert';
import 'dart:developer';

import 'package:ecommerce_shopanbd/data/models/response_model.dart';
import 'package:ecommerce_shopanbd/data/utils/urls.dart';
import 'package:ecommerce_shopanbd/ui/state_management/auth_controller.dart';
import 'package:http/http.dart';
import '../models/response_model.dart';

class NetworkCaller {
  //singleton
  NetworkCaller._();

  static Future<ResponseModel> getRequest({required String url}) async {
    try {
      print(AuthController.token.toString());
     // print(Urls.baseUrl + url);
      final Response response = await get(Uri.parse(Urls.baseUrl + url), headers: {
        'Content-type': 'application/json',
        'Accept' : 'application/json',
        'token' : AuthController.token.toString(),

      });
     // print(response.statusCode);
      log(response.body);
      if (response.statusCode == 200) {
        return ResponseModel(
          isSuccess: true,
            statusCode: response.statusCode,
            returnData: jsonDecode(response.body)
        );
      } else {
    return ResponseModel(
    isSuccess: false,
    statusCode: response.statusCode,
    returnData: jsonDecode(response.body)
    );
    }

    } catch (e) {
     // print('log print error');
      log(e.toString());
      return ResponseModel(
          isSuccess: false,
          statusCode: -1,
          returnData: e.toString());
    }
  }


}