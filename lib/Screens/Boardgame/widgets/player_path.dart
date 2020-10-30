import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';
import 'package:pictogame/Screens/Boardgame/widgets/square_point.dart';

class PlayerPath extends StatelessWidget {

  final GameController _gameController = Get.find();

  bool isTeam1;

  PlayerPath({Key key, @required this.isTeam1}):assert(isTeam1 != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        verticalDirection: VerticalDirection.up,
        children: _buildSquarePoint(),
      ),
    );
  }

  List<Widget> _buildSquarePoint(){
    List<Widget> squares = List<Widget>();
    var number = 1;
    for(var i = 1; i <= 15;i++){
      switch(number){
        case 1:
          squares.add(SquarePoint.VERB(point: i,isTeam1: this.isTeam1,));
          break;
        case 2:
          squares.add(SquarePoint.ADJETIVE(point:i,isTeam1: this.isTeam1,));
          break;
        case 3:
          squares.add(SquarePoint.HARD(point: i,isTeam1: this.isTeam1,));
          break;
        case 4:
          squares.add(SquarePoint.ALLPLAYS(point: i,isTeam1: this.isTeam1,));
          break;
      }
      number = (number == 4) ? 1 : number + 1;
    }
    return squares;
  }
}
