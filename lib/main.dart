import 'package:flutter/material.dart';
import 'package:memorizing/app.dart';

void main() => runApp(Memorizing());

class Memorizing extends StatefulWidget {
  @override
  _MemorizingState createState() => _MemorizingState();
}

class _MemorizingState extends State<Memorizing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(91, 102, 227, 1),
      child: App(),
    );
  }
}
