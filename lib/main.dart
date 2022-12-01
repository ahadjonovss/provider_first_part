import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_first_lesson/ui/main_page.dart';

void main() {
  runApp(Provider(
      create: (BuildContext context) {  },
  child: const MyApp()));
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
