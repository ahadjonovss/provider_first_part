import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_first_lesson/view_model/main_page_view_model.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
            stream: context.read<MainPageViewModel>().counter(),

            builder: (context, snapshot) {
            if(snapshot.hasData){
              return Text(snapshot.data.toString());
            }
            return Container();


          } ),
        ),
    );
  }
}
