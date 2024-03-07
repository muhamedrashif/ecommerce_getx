import 'package:get/get.dart';

class UserController extends GetxController {
  var name = ''.obs;
  var phoneNumber = ''.obs;

  void setName(String value) {
    name.value = value;
  }

  void setPhoneNumber(String value) {
    phoneNumber.value = value;
  }
}
