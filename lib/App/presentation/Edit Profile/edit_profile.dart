import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/presentation/Edit%20Profile/edit_profile_controller.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/text_button.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/popular_movies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends GetWidget<EditProfileController> {
  const EditProfile({Key? key}) : super(key: key);

  final SizedBox height10 = const SizedBox(height: 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColor.green900,
        elevation: 0,
        title: const Text("Upload Profile"),
        titleTextStyle: const TextStyle(color: AppColor.whiteColor),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 5),
              const PhotoSection(),
              height10,
              const CustomeText(
                  name: "Upload/Change Photo", color: AppColor.green900),
              const Spacer(),
              const TextFieldLabelText(text: "Frist Name"),
              TextFieldWithController(inputController: controller.fristNameController,),
              height10,
              const TextFieldLabelText(text: "Last Name"),
              TextFieldWithController(inputController: controller.lastNameController,),
              height10,
              const TextFieldLabelText(text: "Date Of Brith"),
              TextFieldWithController(labelText: "dd/mm//yy", inputController: controller.dateOfBirthController),
              height10,
              const TextFieldLabelText(text: "Sex"),
              const CheckBoxSection(),
               CustomeTextButton(
                  bgColor: AppColor.green900, buttonName: "Update", onTap: (){},),
              height10,
            ],
          ),
        ),
      ),
    );
  }
}

class CheckBoxSection extends GetWidget<EditProfileController> {
  const CheckBoxSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Obx(
              () => Checkbox(
                value: controller.checkBoxBool.value,
                activeColor: AppColor.green900,
                onChanged: (value) {
                  controller.checkBoxBool.value =
                      !controller.checkBoxBool.value;
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            // const SizedBox(width: 10),
            const TextFieldLabelText(text: "Male")
          ],
        ),
        Row(
          children: [
            Obx(
              () => Checkbox(
                value: !controller.checkBoxBool.value,
                activeColor: AppColor.green900,
                onChanged: (value) {
                  controller.checkBoxBool.value =
                      !controller.checkBoxBool.value;
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            // const SizedBox(width: 10),
            const TextFieldLabelText(text: "FeMale")
          ],
        ),
      ],
    );
  }
}

class TextFieldWithController extends StatelessWidget {
  const TextFieldWithController({
    Key? key,
    this.labelText = "Type Here", required this.inputController,
  }) : super(key: key);

  final String labelText;
  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: inputController,
      decoration: InputDecoration(
        hintText: labelText,
      ),
    );
  }
}

class TextFieldLabelText extends StatelessWidget {
  const TextFieldLabelText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CustomeText(
          name: text,
          color: Theme.of(context).appBarTheme.titleTextStyle!.color!),
    );
  }
}

class PhotoSection extends StatelessWidget {
  const PhotoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundColor: AppColor.transparentColor,
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: Colors.grey[800],
              radius: 50,
              child: const Icon(Icons.person, size: 50),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[800],
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt,
                    color: AppColor.green900,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
