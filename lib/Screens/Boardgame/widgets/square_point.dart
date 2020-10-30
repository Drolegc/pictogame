import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';
import 'package:pictogame/utils/categories.dart';



class SquarePoint extends StatelessWidget {

  int point;
  Categorie categorie;
  Color _color;
  String _text;
  bool isTeam1;
  final GameController _gameController = Get.find();

  SquarePoint.ALLPLAYS({Key key,@required this.point,@required this.isTeam1}):assert(isTeam1 != null){
   categorie = Categorie.ALL_PLAYS;
   _color = Colors.redAccent;
   _text = "AP";
  }

  SquarePoint.VERB({Key key,@required this.point,@required this.isTeam1}):assert(isTeam1 != null){
    categorie = Categorie.VERB;
    _color = Colors.greenAccent;
    _text = "V";
  }

  SquarePoint.ADJETIVE({Key key,@required this.point,@required this.isTeam1}):assert(isTeam1 != null){
    categorie = Categorie.ADJETIVE;
    _color = Colors.lightBlueAccent;
    _text = "A";
  }

  SquarePoint.HARD({Key key,@required this.point,@required this.isTeam1}):assert(isTeam1 != null){
    categorie = Categorie.HARD;
    _color = Colors.yellowAccent;
    _text = "H";
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Obx((){
        if(isTeam1){
          return Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: _color
                  ),
                  child: Center(
                    child: Text(_text,style: TextStyle(fontWeight: FontWeight.bold,color: _color),),
                  ),
                ),
              ),
              (_gameController.currentPointTeam1.value == point) ? Icon(Icons.arrow_left) : SizedBox.shrink()

            ],
          );
        }else{
          return Row(
            children: [
              (_gameController.currentPointTeam2.value == point) ? Icon(Icons.arrow_right) : SizedBox.shrink(),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: _color
                  ),
                  child: Center(
                    child: Text(_text,style: TextStyle(fontWeight: FontWeight.bold,color: _color),),
                  ),
                ),
              )
            ],
          );
        }
      })
    );
  }
}
