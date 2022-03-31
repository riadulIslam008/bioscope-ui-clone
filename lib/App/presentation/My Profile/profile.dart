import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/custom_appbar.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/name_and_icon.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/text_button.dart';
import 'package:bioscope/App/presentation/HomeView/Widgets/popular_movies.dart';
import 'package:bioscope/App/presentation/MainView/main_view.dart';
import 'package:bioscope/App/presentation/MainView/main_view_controller.dart';
import 'package:bioscope/App/presentation/MainView/widgets/bottom_bar.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/custome_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends GetWidget<MainViewController> {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        key: controller.myProfileScaffoldKey,
        appBar: CustomAppBar(
            leadingIconTap: () => controller.myProfileDrawer(), editIcon: true),
        floatingActionButton:
            FloatingButton(controller: controller, callFromDrawerPage: true),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        drawer: const CustomeDrawer(),
        bottomNavigationBar: BottomBar(callFromDrawerPage: true),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CoverAndImagePhotoSection(),
              const SizedBox(height: 10),
              CustomeText(
                name: "0123456789",
                color: Theme.of(context).appBarTheme.titleTextStyle!.color!,
              ),
              const SizedBox(height: 20),
              TabBar(
                indicatorColor: AppColor.green900,
                labelColor: AppColor.green900,
                unselectedLabelColor:
                    Theme.of(context).textTheme.caption!.color,
                tabs: const [
                  TabBarText(text: "History"),
                  TabBarText(text: "subscription"),
                ],
              ),
              SizedBox(
                height: 190,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 10),
                    child: TabBarView(
                      children: [
                        CustomeText(
                          name: "Have no watch history",
                          color: Theme.of(context)
                              .appBarTheme
                              .titleTextStyle!
                              .color!,
                          textAlign: TextAlign.center,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children:  [
                                   const Text(
                                      "No Active Plan",
                                      style: TextStyle(
                                        color: AppColor.green900,
                                        fontSize: 20,
                                      ),
                                    ),
                                  const  Spacer(),
                                    CustomeTextButton(
                                      onTap: (){},
                                        bgColor: AppColor.green900,
                                        buttonName: "SUBSCRIBE"),
                                  ],
                                ),
                              ),
                               Padding(
                                padding:const EdgeInsets.symmetric(vertical: 5),
                                child: NameAndIcon(channel: "Payment History",onTap: (){}),
                              ),
                              const Divider(color: Colors.grey),
                               Padding(
                                padding:const EdgeInsets.symmetric(vertical: 5),
                                child: NameAndIcon(channel: "privacy policy", onTap: (){},),
                              ),
                              const SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarText extends StatelessWidget {
  const TabBarText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(text.toUpperCase()),
    );
  }
}

class CoverAndImagePhotoSection extends StatelessWidget {
  const CoverAndImagePhotoSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenDetails.screenHeight * 0.40,
      child: Stack(
        children: [
          Container(
            color: Colors.green,
            height: ScreenDetails.screenHeight * 0.30,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[100]!,
                    width: 1,
                  )),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey[400],
                  child: const Icon(Icons.person, size: 110),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
