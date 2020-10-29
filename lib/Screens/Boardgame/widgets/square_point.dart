import 'package:flutter/material.dart';

enum Categorie {
  ALL_PLAYS,
  VERB,
  HARD,
  ADJETIVE
}

class SquarePoint extends StatelessWidget {

  int point;
  Categorie categorie;
  Color _color;
  String _text;

  SquarePoint.ALLPLAYS({Key key,@required this.point}){
   categorie = Categorie.ALL_PLAYS;
   _color = Colors.redAccent[700];
   _text = "AP";
  }

  SquarePoint.VERB({Key key,@required this.point}){
    categorie = Categorie.VERB;
    _color = Colors.greenAccent[700];
    _text = "V";
  }

  SquarePoint.ADJETIVE({Key key,@required this.point}){
    categorie = Categorie.ADJETIVE;
    _color = Colors.lightBlueAccent[700];
    _text = "A";
  }

  SquarePoint.HARD({Key key,@required this.point}){
    categorie = Categorie.HARD;
    _color = Colors.yellowAccent[700];
    _text = "H";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color
      ),
      child: Center(
        child: Text(_text,style: TextStyle(fontWeight: FontWeight.bold,color: _color),),
      ),
    );
  }
}
