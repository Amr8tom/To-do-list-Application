
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_expert/Network/Dio.dart';
import 'package:to_do_expert/coubits/NewsCoubit.dart';
import 'package:to_do_expert/states.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import '../components/Bascis_components.dart';
class business extends StatelessWidget {
  const business({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var hieght=size.height;
    var width=size.width;
    return BlocProvider(
      create: (BuildContext context) => NewsCoubit(initstatnew()),
      child: BlocConsumer<NewsCoubit,statesNews>(
        listener: (BuildContext context, state) {  },
        builder: (context,state){
          var MYList1=NewsCoubit.data;
          var MYList=[];
          for ( var l in MYList1){

          if (l["urlToImage"]!=null || l["title"]!=null || l["description"]!=null){
            MYList.add(l);
          }
          }
          NewsCoubit NC=NewsCoubit.get(context);
          return ConditionalBuilder(
            fallback: (BuildContext context) {
              NC.coditionalbuilder();
              return Center(child: CircularProgressIndicator(),);},
            builder: (BuildContext context) {
              return ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: MYList.length,
                itemBuilder: (BuildContext context, int index) {
                  return item_newApp(
                      imageURL: MYList[index]["urlToImage"],
                      title: MYList[index]["title"],
                      Descreption: MYList[index]["description"]); },

                separatorBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text("----"*1000,maxLines: 1,
                        style: TextStyle(color: Colors.black12),
                      ),
                    ),
                  );
                },

              );
            },
            condition:NC.check,
          );
        },
      ),
      
    );
  }
}
