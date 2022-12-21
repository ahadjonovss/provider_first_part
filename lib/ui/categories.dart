import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../view_model/category_view_model.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<CategoryViewModel>().fetchCategory();
        },
      ),
      body: Consumer<CategoryViewModel>(
        builder: (context, viewModel, child){
          if(viewModel.categoryModel == null){
            return Center(child: Text("No data"),);
          }
          else {
            var datalist =  viewModel.categoryModel;
            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: datalist!.length,

                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.only(right: 20, left: 20, top: 15),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(datalist[index].imageUrl.toString(),height: 20,width: 20, )),

                              Column(
                                children: [
                                  const SizedBox(height: 15,),
                                  Text("${datalist[index].name}", style: TextStyle(color: Colors.white),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            );
          }
        },

      ),
    );
  }
}