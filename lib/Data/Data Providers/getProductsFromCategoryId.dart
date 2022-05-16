

import 'dart:convert';

import 'package:dio/dio.dart';

import "../API's/api's.dart";


class GetAllProductsFromCategoryId{

  var dio = Dio();

  Future<dynamic> getAllProducts(String id) async {

    final response = await dio.get(
      (getProductsOfCategoryAPI+id+consumer_secret+consumer_key),
      // options: Options(headers: <String, String>{'authorization': auth})
    );
    return response.data;
  }
}