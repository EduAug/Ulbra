import 'package:aula10_widgs/custom_icon_text.dart';
import 'package:aula10_widgs/title_w_star.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final double sizeIcons;

  const HomePage({super.key, required this.sizeIcons});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Flutter Layout Demo",
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Image.network("https://images.unsplash.com/photo-1471115853179-bb1d604434e0?q=80&w=2564&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        TitleWithStar(
                            title: "Oeschinen Lake Campground",
                            subtitle: "Kandersteg, Switzerland",
                            sizeIcon: sizeIcons,
                        ),
                        const SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconWithText(
                                size: sizeIcons,
                                color: Colors.purple,
                                icon: Icons.call,
                                textIcon: "Call"
                            ),
                            IconWithText(
                                size: sizeIcons,
                                color: Colors.purple,
                                icon: Icons.route,
                                textIcon: "Route"
                            ),
                            IconWithText(
                                size: sizeIcons,
                                color: Colors.purple,
                                icon: Icons.share,
                                textIcon: "Share"
                            )
                          ],
                        ),
                        const Column(
                          children:
                          [
                            SizedBox(height: 40,),
                            Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ut nisi vel mauris interdum porta. Ut rhoncus vehicula purus, a placerat dolor pretium non. Nulla ut lectus mattis, pulvinar lectus eget, hendrerit lacus. Morbi eleifend lacus eget purus cursus, quis maximus ipsum scelerisque. In facilisis erat dictum, iaculis ante ac, sagittis lectus. Pellentesque non neque felis. Donec suscipit tellus libero, eget aliquam sapien vestibulum molestie. Duis elementum nibh sit amet lacus cursus consectetur. Ut purus mauris, mattis ac condimentum non, aliquet non eros. Ut nec tortor mi. Ut in felis facilisis, scelerisque dolor nec, convallis nulla."
                            "In pretium nisi ut magna dapibus sollicitudin.",
                            style: TextStyle(fontSize: 20),
                          ),
                          ]
                        )
                      ],
                    ),
                  )
              ],
              ),
            )
        )
    );
  }
}

/*
* SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("yo"),
                Text("yo"),
                Text("yo"),
                Text("yo"),
              ],
            ),
          )
* */
