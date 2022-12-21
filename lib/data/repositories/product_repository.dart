import '../api_service/api_service.dart';
import '../models/product_model.dart';


class ProductRepository {
  ProductRepository({required this.apiService});
  ApiService apiService;

  Future<ProductsModel?> getMyProduct()=> apiService.getProducts();


}