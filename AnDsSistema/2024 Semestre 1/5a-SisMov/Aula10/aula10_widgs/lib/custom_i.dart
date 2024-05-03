import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final double size;
  final Color color;
  final IconData icon;

  const CustomIcon({super.key, required this.size, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: color, size: size);
  }
}
