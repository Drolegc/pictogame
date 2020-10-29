import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';
import 'package:pictogame/Screens/Boardgame/widgets/square_point.dart';

class PlayerPath extends StatelessWidget {

  final GameController _gameController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: _buildSquarePoint(),
      ),
    );
  }

  List<Widget> _buildSquarePoint(){
    List<Widget> squares = List<Widget>();
    var number = 1;
    for(var i = 0; i <= _gameController.maxPoints;i++){
      switch(number){
        case 1:
          squares.add(Expanded(child: SquarePoint.VERB(point: i)));
          break;
        case 2:
          squares.add(Expanded(child: SquarePoint.ADJETIVE(point:i)));
          break;
        case 3:
          squares.add(Expanded(child: SquarePoint.HARD(point: i)));
          break;
        case 4:
          squares.add(Expanded(child: SquarePoint.ALLPLAYS(point: i)));
          break;
      }
      number = (number == 4) ? 1 : number + 1;
    }
    return squares;
  }
}
