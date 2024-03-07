import 'package:get/get.dart';
import 'package:mini_ecommerce/webservices/webservice.dart';

class PromodelController extends GetxController {
  var products = <Promodel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      var fetchedProducts = await ApiService.fetchProducts();
      products.assignAll(fetchedProducts);
    } catch (e) {
      print('Error fetching products: $e');
    }
  }
}
