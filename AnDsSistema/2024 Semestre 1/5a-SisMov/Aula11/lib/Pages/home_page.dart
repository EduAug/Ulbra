import 'dart:math';

import 'package:aula11_widgs/Widgets/lista_linguagens.dart';
import 'package:flutter/material.dart';

class StatefulHomePage extends StatefulWidget {
  final String title;

  const StatefulHomePage({super.key, required this.title});

  @override
  State<StatefulHomePage> createState() => _State();
}

class _State extends State<StatefulHomePage> {
  final TextEditingController _controller = TextEditingController();
  String filtro = "";

  late Color color;

  void changeBG() {
    setState(() {
      color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  void initState() {
    super.initState();
    changeBG();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        actions: [
          IconButton(
              onPressed: () {
                changeBG();
              },
              icon: const Icon(Icons.color_lens_outlined))
        ],
        title: Text(widget.title),
      ),
      body: ListaLinguagens(filtro: filtro, color: color),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                onChanged: (String text) {
                  setState(() {
                    filtro = _controller.text;
                  });
                },
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: "Filtrar",
                  enabledBorder: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                changeBG();
                setState(() {
                  filtro = _controller.text;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: color),
              child: const Text(
                "Filtrar",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
