import 'package:flutter/cupertino.dart';

class DownloadableItem {
  final String sectionName;
  final IconData iconName;
  final VoidCallback onTap;

  DownloadableItem({required this.sectionName, required this.iconName, required this.onTap});
}
