
import 'dart:convert';

import '../Data Providers/getProductsFromCategoryId.dart';
import '../Data Providers/searchProducts.dart';
import '../Models/ProductsModel.dart';

class SearchProductRepo{


  Future<List<ProductsModel>> mapAllSearchedProductsOnModels(String search) async {
    dynamic res=await SearchProductAPICall().searchProductsWithAPI(search);
    List<ProductsModel> products=[];
    await Future.forEach(res, (dynamic ele) {
      products.add(ProductsModel.fromJson(ele));
    });
    return products;
  }

  Future<List<ProductsModel>> mapAllProductsOnModels(String id) async {
    dynamic res=await GetAllProductsFromCategoryId().getAllProducts(id);
    List<ProductsModel> products=[];
    await Future.forEach(res, (dynamic ele) {
      products.add(ProductsModel.fromJson(ele));
    });
    return products;
    // print(res);
  }
}