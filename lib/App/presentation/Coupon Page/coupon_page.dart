import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:bioscope/App/presentation/Edit%20Profile/edit_profile.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/custome_button.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/popular_movies.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:bioscope/App/presentation/MainView/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CouponPage extends GetWidget<MainViewController> {
  const CouponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width > 400 ? 400 : Get.width,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColor.dramabg,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: LogoAndTitle(
              controller: controller,
              titleColor: Theme.of(context).appBarTheme.titleTextStyle!.color!,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Subscribe and get access to 45+ Live TV Channels, 300+ Bangla Movies & 30+ Bioscope originals.",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.whiteColor,
                  ),
                ),
                const SizedBox(height: 10),
                const CustomeText(
                  name: "Anytime from Anywhere!",
                  color: AppColor.green900,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Container(
                  height: ScreenDetails.screenHeight * 0.50,
                  width: ScreenDetails.screenWidth * 0.80,
                  decoration: BoxDecoration(
                    // color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const TextFieldLabelText(text: "Apply Couon Code"),
                            const SizedBox(height: 15),
                            SizedBox(
                              height: 45,
                              child: TextField(
                                cursorColor: AppColor.blackColor,
                                cursorHeight: 20,
                                style: const TextStyle(
                                  color: AppColor.blackColor,
                                ),
                                // controller: ,
                                decoration: InputDecoration(
                                    focusColor: Colors.black,
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: AppColor.blackColor),
                                    ),
                                    hintText: "Enter your coupon code",
                                    fillColor: Colors.grey[400],
                                    filled: true),
                              ),
                            ),
                            const SizedBox(height: 20),
                            CustomeButton(
                              background: AppColor.green900,
                              text: "submit",
                              icon: null,
                              iconAndtextColor: AppColor.whiteColor,
                              onTap: () {},
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "After activation you can enjoy PRIME videos through mobile data or Wi-Fi at anytime from anywhere.",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
