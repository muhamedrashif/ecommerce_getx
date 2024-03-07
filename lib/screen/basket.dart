import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_ecommerce/controller/basketcontrol.dart';
// import 'package:mini_ecommerce/model/promodel.dart'; // Import the Promodel class
import 'package:mini_ecommerce/screen/checkout.dart';
import 'package:mini_ecommerce/const.dart';
import 'package:mini_ecommerce/webservices/webservice.dart';

class Basket extends StatefulWidget {
  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  final BasketController basketController = Get.put(BasketController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Basket',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: mainColor,
      ),
      body: Obx(() {
        List<Promodel> productsInBasket = basketController.products;
        return ListView.builder(
          itemCount: productsInBasket.length,
          itemBuilder: (context, index) {
            final product = productsInBasket[index];
            return Card(
              elevation: 00,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Card(
                    elevation: 10,
                    child: Image.network(
                     product.productImage!,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(product.title.toString()),
                subtitle: Text('\Rs ${product.price!.toDouble()}',style: TextStyle(color: mainColor),),
                trailing: IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    // Remove product from the basket
                    basketController.removeProduct(product);
                  },
                ),
              ),
            );
          },
        );
      }),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Obx(() {
              double total = basketController.totalAmount;
              return Text(
                'Total: \Rs ${total.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              );
            }),
            ElevatedButton(
              onPressed: () {
                // Navigate to checkout page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderTakenPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: mainColor,
                textStyle: TextStyle(fontSize: 18.0),
                minimumSize: Size(190, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23.0),
                ),
              ),
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
