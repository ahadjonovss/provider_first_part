import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_first_lesson/data/api_service/api_service.dart';
import 'package:provider_first_lesson/data/repositories/category_repository.dart';
import 'package:provider_first_lesson/ui/categories.dart';
import 'package:provider_first_lesson/ui/mainPage.dart';
import 'package:provider_first_lesson/ui/home_page.dart';
import 'package:provider_first_lesson/view_model/category_view_model.dart';
import 'package:provider_first_lesson/view_model/product_view_model.dart';

import 'data/repositories/product_repository.dart';

void main() {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CategoryViewModel(categoryRepository: CategoryRepository(apiService: ApiService()))),
      ChangeNotifierProvider(create: (context) => ProductViewModel(productRepository: ProductRepository(apiService: ApiService()))),
    ],
    child: MyApp(),

  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
