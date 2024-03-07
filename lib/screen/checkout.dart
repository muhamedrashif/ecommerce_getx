import 'package:flutter/material.dart';
// import 'package:mini_ecomfruit/constants/const.dart';
// import 'package:mini_ecomfruit/home.dart';
// import 'package:mini_ecomfruit/reg2.dart';
import 'package:mini_ecommerce/const.dart';
import 'package:mini_ecommerce/screen/homepage.dart';
import 'package:mini_ecommerce/screen/mainscreen.dart';
import 'package:mini_ecommerce/screen/startordering.dart';

class OrderTakenPage extends StatefulWidget {
  @override
  State<OrderTakenPage> createState() => _OrderTakenPageState();
}

class _OrderTakenPageState extends State<OrderTakenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/success.png',
              width: 200,
              height: 200,
              // Adjust width and height as needed
            ),
            SizedBox(height: 20),
            Text(
              "Order Taken",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5,),
            Text(
              "Your order has been taken and is being attended to.",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              width: 180,
              height: 60,
              decoration: BoxDecoration(
                  color: mainColor, borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StartOrdering(),
                    ),
                  );
                },
                child: Text(
                  "Track order",
                  style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 190,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(25)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homescreen(),
                    ),
                  );
                },
                child: Text(
                  "Continue shopping",
                  style: TextStyle(color: Colors.orange, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}