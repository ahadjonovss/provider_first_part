import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_first_lesson/view_model/main_page_view_model.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(pow(context.read<MainPageViewModel>().number??0,2).toString()),
      ),
    );
  }
}
