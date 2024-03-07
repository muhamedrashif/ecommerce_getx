import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:mini_ecommerce/const.dart';
import 'package:mini_ecommerce/screen/mainscreen.dart';
import 'package:mini_ecommerce/widgets/mybutton.dart';

class StartOrdering extends StatefulWidget {
  @override
  _StartOrderingState createState() => _StartOrderingState();
}

class _StartOrderingState extends State<StartOrdering> {

  registration(
    String name,
    phone,
  ) async {
    var result;
    final Map<String, dynamic> Data = {
      'name': name,
      'phone': phone,
    };
    final response = await http.post(
      Uri.parse('http://192.168.29.216:8080/mini/registering.jsp'),
      body: Data,
    );

    if (response.statusCode == 200) {
      if (response.body.contains("success")) {
        log('registration successfully completed');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Homescreen(),
            ));
      } else {
        log('registration faild');
      }
    } else {
      result = {log(json.decode(response.body)['error'].toString())};
    }
    return result;
  }
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  color: mainColor,
                  image: DecorationImage(
                    image: AssetImage('assets/images/accountcreatepage.png'),
                    scale: 4,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: mainColor,
                    image: DecorationImage(
                      image: AssetImage('assets/images/ellipse1.png'),
                      scale: 5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 120,
                child: Center(
                  child: Text(
                    "What is your first name?",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24, // Increased font size
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: namecontroller,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: phonecontroller,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    MybuttonWidget(title:  'Start Ordering',)
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(builder: (context) => Homescreen()),
                    //     );
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.orange,
                    //     padding:
                    //         EdgeInsets.symmetric(horizontal: 115, vertical: 25),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(25),
                    //       side: BorderSide(color: Colors.orange),
                    //     ),
                    //   ),
                    //   child: Text(
                    //     'Start Ordering',
                    //     style: TextStyle(color: Colors.white),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
