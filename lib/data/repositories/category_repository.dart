import '../api_service/api_service.dart';
import '../models/category_model.dart';
import '../models/product_model.dart';

class CategoryRepository {
  CategoryRepository({required this.apiService});
  ApiService apiService;

  Future<List<CategoryModel?>>? getMyProduct()=> apiService.getCategories();

}