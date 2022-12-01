import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
      body: Center(
        child: Consumer<MainPageViewModel>(
          builder: (context, mainPageViewModel, child) {
            return Container(
              child: mainPageViewModel.isLoading?
                  const CircularProgressIndicator():
                  mainPageViewModel.cards==null?
                      Text("Hech nima kelmadi"):
                      Text(mainPageViewModel.cards![0].bankName)
              ,
            );

          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.download),
        onPressed: (){
          context.read<MainPageViewModel>().fetchCards();
        },
      ),
    );
  }
}
