import 'package:provider_first_lesson/data/api_service/api_service.dart';

class AppRepository{
  getDataFromApi()=>ApiService.getUserData();
}
