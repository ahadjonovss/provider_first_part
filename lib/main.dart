import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_first_lesson/ui/main_page.dart';
import 'package:provider_first_lesson/view_model/main_page_view_model.dart';

void main() {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => MainPageViewModel()),
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
