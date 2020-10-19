import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pictogame/Home/home.dart';

void main() {
  runApp(GetMaterialApp(
    getPages: [
      GetPage(name: '/', page: () => Home())
    ],
  ));
}

