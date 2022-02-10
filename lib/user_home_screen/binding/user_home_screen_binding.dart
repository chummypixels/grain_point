import 'package:get/get.dart';
import '../controller/user_home_screen_controller.dart';

class UserHomeScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserHomeScreenController());
  }
}
