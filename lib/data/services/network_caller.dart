import 'dart:convert';
import 'dart:developer';
import 'dart:math';

import 'package:ecommerce_shopanbd/data/models/response_model.dart';
import 'package:ecommerce_shopanbd/data/utils/urls.dart';
import 'package:http/http.dart';

class NetworkCaller {
  //singleton
  NetworkCaller._();

  static Future<ResponseModel> getRequest({required String url}) async {
    try {
    final Response response = await get(Uri.parse(Urls.baseUrl + url));
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
      log(e.toString());
      return ResponseModel(
          isSuccess: false,
          statusCode: -1,
          returnData: e.toString()
      );
    }
  }
}