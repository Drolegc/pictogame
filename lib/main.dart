import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Home/home.dart';
import 'package:pictogame/NewPlay/new_play.dart';

void main() {
  runApp(GetMaterialApp(
    getPages: [
      GetPage(name: '/', page: () => Home()),
      GetPage(name: '/new_play',page: () => NewPlay())
    ],
  ));
}

