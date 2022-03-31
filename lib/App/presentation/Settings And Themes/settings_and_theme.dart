import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/custom_appbar.dart';
import 'package:bioscope/App/presentation/MainView/main_view.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:bioscope/App/presentation/MainView/widgets/bottom_bar.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/custome_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';

class SettingsAndTheme extends GetWidget<MainViewController> {
  const SettingsAndTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      resizeToAvoidBottomInset: false,
      key: controller.settingScaffoldKey,
      floatingActionButton: FloatingButton(controller: controller, callFromDrawerPage: true),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      drawer: const CustomeDrawer(),
      bottomNavigationBar: BottomBar(callFromDrawerPage: true),
      appBar: CustomAppBar(leadingIconTap: () => controller.settingDrawer()),
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingContainer(
              widget: Row(
                children: [
                  const SettingText(text: "Change Language"),
                  const Spacer(),
                  GFToggle(
                    onChanged: (value) {},
                    value: false,
                  ),
                  Text("English", style: Theme.of(context).textTheme.bodyText1),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            SettingContainer(
              widget: Row(
                children: [
                  const SettingText(text: "Change Theme"),
                  const Spacer(),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColor.transparentColor,
                      side: BorderSide(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onPressed: () {
                      if (controller.isDarkTheme.value) {
                        Get.changeThemeMode(ThemeMode.light);
                        controller.isDarkTheme.value = false;
                      } else {
                        Get.changeThemeMode(ThemeMode.dark);
                        controller.isDarkTheme.value = true;
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            Get.isDarkMode ? "Dark" : "Light",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          //  const Spacer(),
                          Icon(
                            Get.isDarkMode
                                ? Icons.brightness_4_outlined
                                : Icons.brightness_2_outlined,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child:
                  Text("Support", style: Theme.of(context).textTheme.caption),
            ),
            SettingContainer(
              widget: Row(
                children: const [
                  SettingText(text: "Frequently Asked Question"),
                  //  Spacer(),
                ],
              ),
            ),
            SettingContainer(
              widget: Row(
                children: const [
                  SettingText(text: "Privacy Policy"),
                  //Spacer(),
                ],
              ),
            ),
            SettingContainer(
              widget: Row(
                children: const [
                  SettingText(text: "Send Feedback"),
                  // Spacer(),
                ],
              ),
            ),
            SettingContainer(
              widget: Row(
                children: const [
                  SettingText(text: "Version"),
                  Spacer(),
                  SettingText(text: "1.0.0"),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingContainer extends StatelessWidget {
  const SettingContainer({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        border: const Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
      ),
      child: widget,
    );
  }
}

class SettingText extends StatelessWidget {
  const SettingText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).textTheme.headline1!.color,
        fontSize: 18,
      ),
    );
  }
}
