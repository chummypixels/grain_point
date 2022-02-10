import 'package:get/get.dart';
import 'package:grain_point/app_export.dart';
import 'package:grain_point/user_home_screen/models/user_home_screen_model.dart';

class UserHomeScreenController extends GetxController with StateMixin<dynamic> {
  Rx<UserHomeScreenModel> userHomeScreenModelObj = UserHomeScreenModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
