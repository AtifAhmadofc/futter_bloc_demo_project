import 'dart:convert';

import 'package:dio/dio.dart';

import "../API's/api's.dart";


class SearchProductAPICall{

  var dio = Dio();

  Future<dynamic> searchProductsWithAPI(String search) async {

    final response = await dio.get(
      (searchProductAPI+search+consumer_secret+consumer_key),
      // options: Options(headers: <String, String>{'authorization': auth})
    );
    return response.data;
  }
}