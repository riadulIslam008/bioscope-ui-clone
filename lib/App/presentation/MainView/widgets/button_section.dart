import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/presentation/Global%20Widgets/custome_button.dart';
import 'package:bioscope/App/rotues/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _textWidget("Drama, Family, Romance | ", context),
              _textWidget("release year | ", context),
              const Divider(
                thickness: 2,
                height: 10,
                color: Colors.black,
              ),
              _textWidget("rating ", context),
              const Icon(Icons.star, color: Colors.orange, size: 22),
            ],
          ),
          const SizedBox(height: 10),
          CustomeButton(
            background: AppColor.green900,
            icon: Icons.play_arrow,
            iconAndtextColor: Colors.white,
            text: "watch now",
            onTap: () {
              Get.toNamed(Routes.watchNowView);
            },
          ),
          const SizedBox(height: 15),
          CustomeButton(
            background: AppColor.transparentColor,
            icon: Icons.add,
            iconAndtextColor: AppColor.green900,
            text: "add to list",
            onTap: () {},
          ),
        ],
      ),
    );
  }

  _textWidget(text, context) => FittedBox(
        child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).textTheme.headline1!.color,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
}
