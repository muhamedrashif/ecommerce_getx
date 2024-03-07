import 'package:flutter/material.dart';
import 'package:mini_ecommerce/const.dart';
// import 'package:mini_ecommerce/screen/startordering.dart';
import 'package:mini_ecommerce/widgets/mybutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: const DecorationImage(
                    scale: 4,
                    image: AssetImage(
                      'assets/images/initialpageimg.png',
                    ),
                  ),
                ),
            
              ),
             SizedBox(
                    height: 130,
                    child: Container(
                      decoration: BoxDecoration(
                        color: mainColor,
                        image: DecorationImage(
                          image: AssetImage('assets/images/ellipse1.png'),
                          scale:5
                        
                        ),
                      ),
                    ),
                  ),
              
              SizedBox(height: 30),
              height50,
              const Text(
                'Get The Freshest Fruit Salad Combo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              height20,
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "We deliver the best and freshest fruit salad in town."
                  "Order for a combo todat!!!",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              height20,
              MybuttonWidget(title: "Let's Continue",),
            ],
          ),
        ),
      ),
    );
  }
}
