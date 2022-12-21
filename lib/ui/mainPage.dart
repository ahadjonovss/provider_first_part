import 'package:flutter/material.dart';
import 'package:provider_first_lesson/ui/categories.dart';
import 'package:provider_first_lesson/ui/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    List pages=[
      CategoryPage(),
      HomePage(),
    ];
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v){
          currentPage=v;
          setState(() {

          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.category),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits),label: ""),
        ],
      ),
    );
  }
}
