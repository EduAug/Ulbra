import 'package:aula10_widgs/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: HomePage(sizeIcons: 27.0),
    );
  }
}
