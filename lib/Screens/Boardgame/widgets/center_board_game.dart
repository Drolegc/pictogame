import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';
import 'package:pictogame/Screens/Boardgame/widgets/current_categorie.dart';
import 'package:pictogame/colors.dart';

class CenterBoardGame extends StatelessWidget {

  final GameController _gameController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("PictoGame",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: PictoColors.brown),),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Points"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Team name X"),
                        CurrentCateogrie(isTeam1: true,)
                      ],
                    ),
                    Column(
                      children: [
                        Text("Team name X"),
                        CurrentCateogrie(isTeam1: false,)
                      ],
                    ),
                  ],
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
