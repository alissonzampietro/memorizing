import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  List vocabulary;

  Category(vocabulary) {
    this.vocabulary = vocabulary;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 500,
          child: ListView.builder(
              itemCount: this.vocabulary.length,
              itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.language),
                title: Text(this.vocabulary[index]['word']),
                subtitle: Text("Significado: "+this.vocabulary[index]['meaning']),
              );
          }),
        )
      ],
    );
  }
}




