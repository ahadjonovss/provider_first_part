import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_first_lesson/ui/first.dart';
import 'package:provider_first_lesson/ui/second.dart';
import 'package:provider_first_lesson/ui/third.dart';
import 'package:provider_first_lesson/view_model/main_page_view_model.dart';



class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onFieldSubmitted: (value) {
                  context.read<MainPageViewModel>().number=int.parse(value);
                },
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>FirstPage()));
              }, child: const Text("First")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SecondPage()));

              }, child: const Text("Second")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>ThirdPage()));

              }, child: const Text("Third"
                  "")),
            ],
          ),
        ),
      ),
    );
  }
}
