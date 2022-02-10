import 'package:grain_point/app_export.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../models/register_farmers_model.dart';

class RegisterFarmersController extends GetxController
    with StateMixin<dynamic> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController residentialAddressController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController lgaController = TextEditingController();
  //TextEditingController registerFarmerModelObj = RegisterFarmersModel().obs;

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    fullNameController.dispose();
    phoneNumberController.dispose();
    residentialAddressController.dispose();
    locationController.dispose();
    stateController.dispose();
    lgaController.dispose();
    super.onClose();
  }
}
