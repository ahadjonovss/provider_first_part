import 'package:flutter/cupertino.dart';

import '../data/models/category_model.dart';
import '../data/repositories/category_repository.dart';

class CategoryViewModel extends ChangeNotifier{
  List<CategoryModel>? categoryModel;
  CategoryRepository categoryRepository;

  CategoryViewModel({required this.categoryRepository});


  fetchCategory()async{
    categoryModel = await categoryRepository.getMyProduct() as List<CategoryModel>;
    notifyListeners();
  }

}


 


