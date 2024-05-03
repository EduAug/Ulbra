import 'package:aula10_widgs/custom_i.dart';
import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final double size;
  final Color color;
  final IconData icon;
  final String textIcon;

  const IconWithText({super.key, required this.size, required this.color, required this.icon, required this.textIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIcon(size: size, color: color, icon: icon),
        Text(textIcon)
      ],
    );
  }
}
