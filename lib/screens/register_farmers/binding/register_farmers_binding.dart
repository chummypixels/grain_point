import 'package:get/get.dart';
import 'package:grain_point/screens/register_farmers/controller/register_farmer_controller.dart';

class RegisterFarmersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterFarmersController());
  }
}
