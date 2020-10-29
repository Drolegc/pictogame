import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Animations/animations_controller.dart';
import 'package:pictogame/Screens/NewPlay/widgets/new_play_back.dart';
import 'package:pictogame/Screens/NewPlay/widgets/new_play_front.dart';
import 'package:pictogame/colors.dart';

class NewPlayScreen extends StatefulWidget {
  @override
  _NewPlayScreenState createState() => _NewPlayScreenState();
}

class _NewPlayScreenState extends State<NewPlayScreen> {

  final AnimationsController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PictoColors.beish,
      body: SafeArea(
        child: FlipCard(
          key: _controller.cardKey,
          flipOnTouch: false,
          front: NewPlayFront(),
          back: NewPlayBack(),
        )
      ),
    );
  }

  @override
  void dispose() {
    _controller.finishAnimationFromHome.value = false;
    super.dispose();
  }
}
