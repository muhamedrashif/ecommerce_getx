// import 'package:flutter/material.dart';
// import 'package:mini_ecommerce/constans/const.dart';
// import 'package:mini_ecommerce/webservise/webservise.dart';

// class DetailsPage extends StatefulWidget {
//   String productname, description, productImage;
//   double price;
//   DetailsPage({
//     required this.description,
//     required this.productname,
//     required this.price,
//     required this.productImage,
//   });

//   @override
//   State<DetailsPage> createState() => _DetailsPageState();
// }

// class _DetailsPageState extends State<DetailsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.8,
//                 height: 250,
//                 decoration: BoxDecoration(
//                   color: mainColor,
//                   image:  DecorationImage(
//                     scale: 1.5,
//                     image: AssetImage(
//                      ApiService.mainurl+ widget.productImage,
//                     ),
//                   ),
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       left: 4,
//                       top: 20,
//                       child: InkWell(
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Colors.white.withOpacity(0.5),
//                             borderRadius: BorderRadius.circular(20),
//                           ),
//                           padding: EdgeInsets.all(8),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.arrow_back_ios_new,
//                                 color: Colors.black,
//                               ),
//                               SizedBox(width: 5),
//                               Text(
//                                 'Go back',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(20),
//                 color: Color.fromARGB(255, 239, 240, 241),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       widget.productname,
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(Icons.remove),
//                               color: mainColor,
//                             ),
//                             SizedBox(width: 5),
//                             Text(
//                               '1000',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             SizedBox(width: 5),
//                             IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(Icons.add),
//                                 color: mainColor),
//                           ],
//                         ),
//                         Spacer(),
//                         Text(
//                           'Rs'+widget.price.toString(),
//                           style: TextStyle(
//                             color: Colors.red.shade900,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         SizedBox(
//                             width:
//                                 10), // Adjust the space between the price and the right edge
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     Text(
//                      widget.description,
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.black,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         CircleAvatar(
//                           backgroundColor:
//                               Colors.orange.shade100.withOpacity(0.5),
//                           child: IconButton(
//                             icon: Icon(
//                               Icons.favorite_border,
//                               color: mainColor,
//                             ),
//                             onPressed: () {},
//                           ),
//                         ),
//                         ElevatedButton(
//                           onPressed: () {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 duration: Duration(seconds: 3),
//                                 behavior: SnackBarBehavior.floating,
//                                 padding: EdgeInsets.all(15.0),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10)),
//                                 ),
//                                 content: Text(
//                                   "Added to basket !!!",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                           style: ElevatedButton.styleFrom(
//                             primary: mainColor,
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 15),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25),
//                               side: BorderSide(color: mainColor),
//                             ),
//                           ),
//                           child: Text(
//                             "Add to basket",
//                             style: TextStyle(fontSize: 16, color: Colors.white),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }