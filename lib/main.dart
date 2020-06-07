import 'dart:math';

import 'package:flutter/material.dart';
import 'package:memorizing/list.dart';
import 'package:memorizing/newWord.dart';

void main() => runApp(Memorizing());

class Memorizing extends StatefulWidget {
  @override
  _MemorizingState createState() => _MemorizingState();
}

class _MemorizingState extends State<Memorizing> {

  Widget bodyContent;

  void changeContentBody(Widget obj) {
    print(obj);
    this.setState(() => this.bodyContent = obj);
    Navigator.pop(context);
  }


  List greetings = [
    'Olá',
    'Welcome',
    'Bonjour'
    'Hallo'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text("Memorizing"),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                    decoration: BoxDecoration(
                        color: Colors.blue
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.greetings[(new Random()).nextInt(this.greetings.length)],
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white
                          ),
                        )
                      ],
                    )
                ),
                ListTile(
                  title: Text("Nova palavra"),
                  subtitle: Text("Pode inserir uma palavra nova"),
                  trailing: Icon(Icons.add),
                  onTap: () => changeContentBody(NewWorld()),
                  selected: this.bodyContent.toString() == "NewWorld",
                ),
                ListTile(
                  title: Text("List words"),
                  subtitle: Text("Pode inserir uma palavra nova"),
                  trailing: Icon(Icons.format_list_bulleted),
                  onTap: () => changeContentBody(ListWords()),
                  selected: this.bodyContent.toString() == "ListWords",
                ),
              ],
            ),
          ),
          body: ListWords()
    ));
  }
}
