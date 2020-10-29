import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pictogame/widgets/pictogame_title.dart';
import 'package:pictogame/widgets/start_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdf7e1),
      body: SafeArea(
        child: Container(
          height: Get.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PictogameTitle(),
              StartButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Mis cartas"),
                    ),
                    onPressed: (){

                    },
                  ),
                  SizedBox(height: 10,),
                  FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Crear cartas"),
                    ),
                    onPressed: (){

                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
