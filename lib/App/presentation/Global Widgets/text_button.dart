import 'package:bioscope/App/presentation/HomeView/Widgets/popular_movies.dart';
import 'package:flutter/material.dart';

class CustomeTextButton extends StatelessWidget {
  const CustomeTextButton({
    Key? key,
    required this.bgColor,
    required this.buttonName, required this.onTap ,
  }) : super(key: key);

  final Color bgColor;
  final String buttonName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(bgColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: CustomeText(
          name: buttonName.toUpperCase(),
        ),
      ),
    );
  }
}
