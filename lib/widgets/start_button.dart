import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Animations/animations_controller.dart';
import 'package:pictogame/colors.dart';
import 'package:pictogame/widgets/card_game.dart';

class StartButton extends StatefulWidget {
  @override
  _StartButtonState createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {

  AnimationsController _animationsController = Get.put(AnimationsController());

  @override
  void initState() {
    super.initState();
    _animationsController.finishAnimationFromHome.listen((val) {
      if(val)
      Get.toNamed('/new_play');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CardGame(color: PictoColors.celeste,position: 3,),
            CardGame(color: PictoColors.orange,position: 2,),
            InkWell(
              child: CardGame(color: PictoColors.red,position: 1,),
              onTap: (){
                _animationsController.rotate.value = !_animationsController.rotate.value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
