import 'package:bioscope/App/Core/utils/app_color.dart';
import 'package:bioscope/App/Core/utils/screen_details.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    Key? key,
    required this.background,
    required this.text,
    required this.icon,
    required this.iconAndtextColor, required this.onTap,
  }) : super(key: key);

  final Color background;
  final String text;
  final IconData? icon;
  final Color iconAndtextColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenDetails.screenWidth,
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          backgroundColor: background,
          side: const BorderSide(
            color: AppColor.green900,
            width: 2,
          ),
        ),
        onPressed: onTap,
        icon: Icon(icon, color: iconAndtextColor),
        label: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: iconAndtextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
