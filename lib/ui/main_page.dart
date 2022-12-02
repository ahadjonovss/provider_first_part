import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_first_lesson/ui/wdgets/card_mockap.dart';
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
      appBar: AppBar(),
      body: Center(
        child: Consumer<MainPageViewModel>(
          builder: (context, mainPageViewModel, child) {
            return Container(
              child: mainPageViewModel.isLoading?
                  const CircularProgressIndicator():
                  mainPageViewModel.cards==null?
                      Text("Hech nima kelmadi"):
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 800,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, index) => CardItems(mainPageViewModel, index),),
                      )
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
