import 'package:get/get.dart';
import 'package:mini_ecommerce/webservices/webservice.dart';

class CatModelController extends GetxController {
  var catModels = <Catmodel>[].obs;

  @override
  void onInit() {
    fetchCatModels();
    super.onInit();
  }

  void fetchCatModels() async {
    try {
      var models = await ApiService.fetchCatModels();
      catModels.assignAll(models);
    } catch (e) {
      print('Error fetching cat models: $e');
    }
  }
}
