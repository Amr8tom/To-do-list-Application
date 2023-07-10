import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class business extends StatelessWidget {
  const business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var hieght=size.height;
    var width=size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          height: hieght/8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage("https://image.cnbcfm.com/api/v1/image/107165899-1671021462752-gettyimages-1245594554-AFP_333M8ZY.jpeg?v=1671320089&w=1920&h=1080")
            )
          ),
        )
      ],
    );
  }
}
