import 'package:dio/dio.dart';
import 'package:flutter_project/lab8/model/products_model.dart';

class ApiProvider{
  final String baseUrl = "https://dummyjson.com";

  ProductsModel ? productsModel;

  Future<ProductsModel?>fetchProducts() async {
    try {
      final response = await Dio().get('$baseUrl/products');
      productsModel = ProductsModel.fromJson(response.data);
      return productsModel;
    } catch (e) {
      throw Exception("Failed to fetch products: ${e.toString()}");
    }
  }
}
