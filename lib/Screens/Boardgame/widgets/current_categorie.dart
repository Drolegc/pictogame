import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';
import 'package:pictogame/utils/categories.dart';

class CurrentCateogrie extends StatelessWidget {

  bool isTeam1;
  final GameController _gameController = Get.find();

  CurrentCateogrie({Key key, @required this.isTeam1}):assert(isTeam1 != null);

  @override
  Widget build(BuildContext context) {
    return Obx(() {

      var text;
      var color;
      Categorie currentCategorie = (isTeam1) ? _gameController.currentCategorieTeam1.value : _gameController.currentCategorieTeam2.value;
      switch(currentCategorie){

        case Categorie.ALL_PLAYS:
          text = "ALL PLAYS";
          color = Colors.redAccent;
          break;
        case Categorie.VERB:
          text = "VERB";
          color = Colors.greenAccent;
          break;
        case Categorie.HARD:
          text = "HARD";
          color = Colors.yellowAccent;
          break;
        case Categorie.ADJETIVE:
          text = "ADJETIVE";
          color = Colors.lightBlueAccent;
          break;
      }

      return Container(
        width: 80,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color
        ),
        child: Text(text,textAlign: TextAlign.center,),
      );
    });
  }
}
