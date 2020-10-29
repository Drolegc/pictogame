import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Bindings/home_bindings.dart';
import 'package:pictogame/Bindings/new_play_bindings.dart';
import 'package:pictogame/Screens/Boardgame/board_game_screen.dart';
import 'package:pictogame/Screens/Home/home_screen.dart';
import 'package:pictogame/Screens/NewPlay/new_play_screen.dart';

void main() {
  runApp(GetMaterialApp(
    getPages: [
      GetPage(
          name: '/',
          page: () => HomeScreen(),
        binding: HomeBindings()
      ),
      GetPage(
          name: '/new_play',
          page: () => NewPlayScreen(),
        binding: NewPlayBindings()
      ),
      GetPage(
        name: '/boardgame',
        page: () => BoardGameScreen(),
          binding: NewPlayBindings()
      )
    ],
    initialRoute: '/',
  ));
}

