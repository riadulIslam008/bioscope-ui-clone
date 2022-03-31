import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  RxBool checkBoxBool = true.obs;

  late TextEditingController fristNameController,
      lastNameController,
      dateOfBirthController;

  @override
  void onInit() {
    fristNameController = TextEditingController();
    lastNameController = TextEditingController();
    dateOfBirthController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    fristNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    super.onClose();
  }
}
