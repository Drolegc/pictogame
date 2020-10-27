import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Animations/animations_controller.dart';
import 'package:pictogame/colors.dart';

class CardGame extends StatefulWidget {

  Color color;
  int position;

  CardGame({Key key, this.color,this.position});

  @override
  _CardGameState createState() => _CardGameState();
}

class _CardGameState extends State<CardGame> with TickerProviderStateMixin{

  AnimationController _controller;
  Animation<double> _animation;
  AnimationsController _animationsController = Get.find();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic
    );
    _animationsController.rotate.listen((newVal) {

      _controller.reset();
      Future.delayed(Duration(milliseconds: widget.position * 100),(){
        _controller.forward().then((value) => _animationsController.finishAnimationFromHome.value = true);
      });

    });

  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _animation,
      child: Container(
        height: 150,
        width: 100,
        decoration: BoxDecoration(
          color: widget.color,
          border: Border.all(
            color: PictoColors.brown,
            width: 8.0,
            style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: (widget.position == 1)?Center(child: FaIcon(FontAwesomeIcons.pencilAlt,size: 50,),):null,
      ),
    );
  }
}
