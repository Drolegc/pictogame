import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';
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
                child: PlayerPath()
            ),
            Flexible(
              flex: 5,
              child: Container(
                child: Center(
                  child: Text("Hi"),
                ),
              ),
            ),
            Flexible(
                child: PlayerPath(),
              flex: 1,
            )
          ],
        )
      ),
    );
  }
}
