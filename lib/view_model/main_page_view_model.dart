import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:provider_first_lesson/data/repositories/app_repository.dart';

class MainPageViewModel extends ChangeNotifier{

  int? number=10;

  Stream<int> counter()async*{
    for(int i=0;i<number!;i++){
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }
  


 



}