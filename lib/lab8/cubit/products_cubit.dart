import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../dio/api_provider.dart';
import '../model/products_model.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ApiProvider apiProvider;

  ProductsCubit(this.apiProvider) : super(ProductsLoading());

  Future<void> fetchProducts() async {
    try {
      final productsModel = await apiProvider.fetchProducts();
      if (productsModel != null && productsModel.products.isNotEmpty) {
        emit(ProductsLoaded(productsModel.products));
      } else {
        emit(ProductsError("No products found"));
      }
    } catch (e) {
      emit(ProductsError("Failed to fetch products: ${e.toString()}"));
    }
  }
}
