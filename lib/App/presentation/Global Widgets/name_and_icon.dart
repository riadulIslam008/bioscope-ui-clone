import 'package:flutter/material.dart';

class NameAndIcon extends StatelessWidget {
  const NameAndIcon({
    Key? key,
    required this.channel,
    this.icon = Icons.keyboard_arrow_right_outlined, required this.onTap,
  }) : super(key: key);

  final String channel;
  final IconData? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Text(
              channel.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.headline1!.color,
                fontSize: 17,
              ),
            ),
            const Spacer(),
            if (icon != null) Icon(icon, size: 30),
          ],
        ),
      ),
    );
  }
}
