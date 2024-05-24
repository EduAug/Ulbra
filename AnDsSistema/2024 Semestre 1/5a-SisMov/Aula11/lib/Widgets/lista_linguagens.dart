import 'package:flutter/material.dart';

class ListaLinguagens extends StatefulWidget {
  final String filtro;
  final Color color;
  const ListaLinguagens({super.key, required this.filtro, required this.color});

  @override
  State<ListaLinguagens> createState() => _ListaLinguagensState();
}
List<String> linguagensDeProgramacao = [
  'Dart',
  'Java',
  'Kotlin',
  'Swift',
  'Objective-C',
  'JavaScript',
  'Python',
  'C#',
  'C++',
  'Ruby',
  'Go',
  'Rust',
  'PHP',
  'TypeScript',
  'CSS',
  'SQL',
  'Shell',
  'Scala',
  'R',
  'Perl',
  'Haskell',
  'Lua',
  'Julia',
  'Groovy',
];
class _ListaLinguagensState extends State<ListaLinguagens> {
  List<String> linguagensFiltradas = [];

  _filtrarLinguagens(){
    return linguagensDeProgramacao
        .where(
            (element) => element.toLowerCase().contains(widget.filtro.toLowerCase())
    )
        .toList();
  }

  @override
  void didUpdateWidget(covariant ListaLinguagens oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(oldWidget.filtro != widget.filtro){
      linguagensFiltradas = _filtrarLinguagens();
    }
  }

  @override
  void initState() {
    super.initState();
    linguagensFiltradas = _filtrarLinguagens();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
          itemBuilder: (BuildContext context, int indexLang){
            return ListTile(
              leading: Icon(
                  Icons.book_online_outlined,
                  color: widget.color
              ),
              title: Text(linguagensFiltradas[indexLang]),
            );
          },
          separatorBuilder: (BuildContext context, int indexLang){
            return const Divider();
          },
          itemCount: linguagensFiltradas.length
      ),
    );
  }
}
