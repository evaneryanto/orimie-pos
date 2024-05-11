// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  String iconPath;
  String label;
  bool isActive;
  VoidCallback onTap;

  NavItem(
      {super.key,
      required this.iconPath,
      required this.label,
      required this.isActive,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Column(),
    );
  }
}
