import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationsController extends GetxController{

  //Home
  RxBool rotate = false.obs;
  RxBool slide = false.obs;
  RxBool finishAnimationFromHome = false.obs;

  //NewPlay
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

}