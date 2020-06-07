import 'package:flutter/material.dart';
import 'package:memorizing/category.dart';

class ListWords extends StatefulWidget {
  @override
  _ListWordsState createState() => _ListWordsState();
}

class _ListWordsState extends State<ListWords> {

  final MyText = TextEditingController();

  bool first = true;

  final words = [
    {
      "word": "Woman",
      "meaning": "Mulher"
    },
    {
      "word": "Horse",
      "meaning": "Cavalo"
    },
    {
      "word": "Door",
      "meaning": "Porta"
    },
    {
      "word": "Witness",
      "meaning": "Testemunha"
    },
    {
      "word": "Fire",
      "meaning": "Fogo"
    },
    {
      "word": "Developer",
      "meaning": "Desenvolvedor"
    }
  ];

  List filteredWords = [];

  @override
  Widget build(BuildContext context) {
    if(this.first) {
      this.filteredWords = this.words;
      this.first = false;
    }
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20),
              width: 340,
              child:  TextFormField(
                onChanged: (text) {
                  var words = [];
                  this.words.forEach((data) {
                    var txt = text.toLowerCase();
                    if(data['word'].toLowerCase().contains(txt) || data['meaning'].toLowerCase().contains(txt)) {
                      words.add(data);
                    }
                  });

                  this.setState(() {
                    this.filteredWords = words;
                  });

                },
                style: new TextStyle(),
                controller: MyText,
                decoration: InputDecoration(
                  labelText: 'Procure a palavra',
                ),
              ),
            ),
          ],
        ),
        Category(this.filteredWords)
      ],
    );
  }
}
