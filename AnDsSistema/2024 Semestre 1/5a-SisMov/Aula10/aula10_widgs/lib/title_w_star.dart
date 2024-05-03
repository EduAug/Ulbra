import 'package:flutter/material.dart';

class TitleWithStar extends StatelessWidget {
  final String title;
  final String subtitle;
  final double sizeIcon;
  const TitleWithStar({super.key,required this.title, required this.subtitle, required this.sizeIcon});

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Expanded(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 6.0
              ),
              child: Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 16
              ),
            )
          ],
        ),
        ),
        Icon(Icons.star, color: Colors.red, size: sizeIcon,),
        const Text("41")
      ],
    );
  }
}
