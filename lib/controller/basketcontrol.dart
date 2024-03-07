import 'package:get/get.dart';
// import 'package:mini_ecommerce/model/promodel.dart';
import 'package:mini_ecommerce/webservices/webservice.dart'; // Import the Promodel class

class BasketController extends GetxController {
  var products = <Promodel>[].obs;

  void addProduct(Promodel productName) {
    products.add(productName);
  }

  void removeProduct(Promodel productName) {
    products.remove(productName);
  }

  double get totalAmount {
    // Calculate the total amount of products in the basket
    return products.fold(0, (total, product) => total + product.price!.toDouble());
  }
}
