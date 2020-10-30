import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';
import 'package:pictogame/Screens/Boardgame/widgets/center_board_game.dart';
import 'package:pictogame/Screens/Boardgame/widgets/player_path.dart';
import 'package:pictogame/colors.dart';

class BoardGameScreen extends StatelessWidget {

  //final GameController _gameController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PictoColors.beish,
      body: Container(
        child: Row(
          children: [
            Flexible(
              flex: 1,
                child: PlayerPath(isTeam1: true,)
            ),
            Flexible(
              flex: 5,
              child: CenterBoardGame()
            ),
            Flexible(
                child: PlayerPath(isTeam1: false,),
              flex: 1,
            )
          ],
        )
      ),
    );
  }
}
