
import 'package:flutter/material.dart';
import 'package:mini_ecommerce/const.dart';
import 'package:mini_ecommerce/screen/mainscreen.dart';
import 'package:mini_ecommerce/screen/startordering.dart';

class MybuttonWidget extends StatelessWidget {
  String title;
   MybuttonWidget({
   required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
          color: mainColor, borderRadius: BorderRadius.circular(15)),
      child: TextButton(
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) =>Homescreen()));
        },
        child:  Text(
         title.toString(),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}