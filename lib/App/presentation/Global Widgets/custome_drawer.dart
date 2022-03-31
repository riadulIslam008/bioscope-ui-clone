import 'package:bioscope/App/Core/asstes/app_assets.dart';
import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/app_list.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/text_button.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:bioscope/App/rotues/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeDrawer extends GetWidget<MainViewController> {
  const CustomeDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppAssets.bioscopeLogo),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  "bioscope",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            for (var i = 0; i < AppList.appMenuListItem.length; i++) ...[
              IconWithText(
                  icon: AppList.appMenuListItem[i].icon,
                  text: AppList.appMenuListItem[i].text,
                  onTap: () {
                    if (i == 0 || i == 2) {
                      controller.openFromDrawerPage.value = true;
                      controller.changeDrawerItemNumber.value = i;
                    }
                    if (i == 1) {
                      Get.toNamed(Routes.myDownloadList);
                    }
                  }),
            ],
            const Divider(
              thickness: 2,
            ),
            IconWithText(
              icon: CupertinoIcons.cloud_upload,
              text: "Coupon",
              onTap: () => Get.toNamed(Routes.couponPage),
            ),
            const Spacer(),
            Row(
              children: [
                Button(
                    buttonText: "signup",
                    onTap: () {
                      dialogBox(text: "Signup With Your Phone Number",context: context);
                    },
                    backGroundColor: AppColor.green900,
                    fontColor: Colors.white),
                Button(
                  backGroundColor: AppColor.transparentColor,
                  fontColor: Colors.grey,
                  buttonText: "login",
                  onTap: () {
                    dialogBox(text: "Login With Your Phone Number",context: context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  dialogBox({required String text, context}) => Get.defaultDialog(
        title: "",
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text(
                text,
                textAlign: TextAlign.left,
                style:  TextStyle(
                  color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  
                ),
              ),
              const SizedBox(height: 10),
               SizedBox(
                height: 45,
                child: TextField(
                  style: TextStyle(
                    color: Theme.of(context).appBarTheme.titleTextStyle!.color,
                  ),
                  // controller: ,
                  keyboardType: TextInputType.number,
                  decoration:const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter mobile number",
                      fillColor: Colors.blueGrey),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomeTextButton(
                    bgColor: AppColor.dramabg.withOpacity(0.4),
                    buttonName: "Cancel",
                    onTap: () => Get.back(),
                  ),
                  CustomeTextButton(
                    onTap: (){},
                      bgColor: AppColor.dramabg.withOpacity(0.4),
                      buttonName: "Submit"),
                ],
              ),
            ],
          ),
        ),
      );
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.backGroundColor,
    required this.fontColor,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  final Color backGroundColor, fontColor;
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: backGroundColor,
          ),
          onPressed: (onTap),
          child: Text(
            buttonText.toUpperCase(),
            style: TextStyle(fontSize: 20, color: fontColor),
          ),
        ),
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  IconWithText({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  final MainViewController controller = Get.find<MainViewController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            Icon(icon, size: 30),
            const SizedBox(width: 15),
            Text(
              text,
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
