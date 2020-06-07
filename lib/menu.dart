import 'package:flutter/material.dart';

class Menu extends StatefulWidget {



  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromRGBO(84, 60, 190, 2), Color.fromRGBO(117, 100, 190, 1)], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset.fromDirection(1.0)
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
                'assets/images/england.png',
                fit: BoxFit.scaleDown,
                width: 50,
                height: 50,
            ),
            Text("English", style: TextStyle(
              color: Colors.white
            ),)
          ],
        ),
    );
  }
}

