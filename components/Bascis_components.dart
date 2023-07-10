import 'package:flutter/material.dart';
Widget DefaultButton({color=Colors.white60,width,required var function,required String text,bool is_upper=true}){
  return Container(
    width:width,
    color: color,
    child: MaterialButton(
      onPressed:function,
      child: Text(is_upper ? text.toUpperCase():text,style: TextStyle(fontSize: 30),),
    ),
  );
}


Widget item_newApp({String? imageURL,
  @required String? title,
  @required String? Descreption,
  width=120,
  hight=120,
  MAXlines=1,
  sIzeBoxHightt=30,
  sIzeBoxwidth=20
}){
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height:hight,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageURL.toString()))
              )
          ),
        SizedBox(height: sIzeBoxHightt,width: sIzeBoxwidth,),
        Expanded(
          child: Column(children: [
            Text(
              title!.toString(),
              maxLines:1,
              style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                textBaseline: TextBaseline.ideographic,
                overflow: TextOverflow.ellipsis,
              ),),
            Text(
              Descreption!.toString(),
              maxLines:MAXlines,
              style: TextStyle(
                fontSize: 15,
                textBaseline: TextBaseline.ideographic,
                overflow: TextOverflow.ellipsis,
              ),),
          ],),
        ),
      ],
    ),
  );
}