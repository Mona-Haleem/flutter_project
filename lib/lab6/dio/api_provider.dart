import 'package:dio/dio.dart';
import 'package:flutter_project/lab6/model/products_model.dart';

class ApiProvider{
  final String baseUrl = "https://dummyjson.com";

  ProductsModel ? productsModel;

  Future<ProductsModel?>fetchProducts() async {
    try {
      final response = await Dio().get('$baseUrl/products');
      productsModel = ProductsModel.fromJson(response.data);
      return productsModel;
    } catch (e) {
      print(e.toString());
    }
  }
}
