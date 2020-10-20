import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  final String nom;
  final String prix;

  const Article(this.nom, this.prix);

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  bool isChecked = false;

  void _rememberChanged(bool newValue) => setState(() {
        isChecked = newValue;
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              widget.nom + " :",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Expanded(
            child: Text(
              widget.prix + "€",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Checkbox(
            value: isChecked,
            onChanged: (bool value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

class Prix extends StatelessWidget {
  Prix(this.prix);

  final double prix;

  @override
  Widget build(BuildContext context) {
    return Text('$prix');
  }
}
