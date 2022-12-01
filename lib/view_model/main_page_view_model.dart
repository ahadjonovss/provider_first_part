import 'package:flutter/cupertino.dart';
import 'package:provider_first_lesson/data/repositories/app_repository.dart';

import '../data/models/card_model.dart';

class MainPageViewModel extends ChangeNotifier{

  bool isLoading=false;
  List? cards;

  fetchCards() async {
    notify(true);
    cards= await AppRepository().getDataFromApi();
    notify(false);
  }

  notify(bool value){
    isLoading=value;
    notifyListeners();
  }

}