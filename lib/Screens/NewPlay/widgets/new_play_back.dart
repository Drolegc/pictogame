import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Animations/animations_controller.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';
import 'package:pictogame/colors.dart';

class NewPlayBack extends StatefulWidget {
  @override
  _NewPlayBackState createState() => _NewPlayBackState();
}

class _NewPlayBackState extends State<NewPlayBack> {

  final AnimationsController _animationsController = Get.find();
  final GameController _gameController = Get.find();
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _controllerTeam1 = TextEditingController();
  final TextEditingController _controllerTeam2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: PictoColors.celeste,
        border: Border.all(
            color: PictoColors.brown,
            width: 8.0,
            style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Text("PictoGame",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
          ),
          Text("Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _form,
              child: Column(
                children: [
                  TextFormField(
                    controller: _controllerTeam1,
                    keyboardType: TextInputType.text,
                    validator: (val){
                      return (val.isEmpty) ? 'Please enter some valid name' : null;
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(
                              color: Colors.white,width: 2
                          )
                      ),
                      hintText: "Team 1",
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color:Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(
                              color:Colors.white
                          )
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: _controllerTeam2,
                    keyboardType: TextInputType.text,
                    validator: (val){
                      return (val.isEmpty ) ? 'Please enter some valid name' : null;
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(
                              color: Colors.white
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(
                              color: Colors.white,width: 2
                          )
                      ),
                      hintText: "Team 2",
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color:Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  color: PictoColors.brown,
                  child: Text("Back",style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    _animationsController.cardKey.currentState.toggleCard();
                  },
                ),
                FlatButton(
                  color: PictoColors.brown,
                  child: Text("Play",style: TextStyle(color: Colors.white),),
                  onPressed: (){
                    if(!_form.currentState.validate())
                      return;

                    _gameController.teamName1 = _controllerTeam1.text;
                    _gameController.teamName2 = _controllerTeam2.text;
                    Get.offNamed('/boardgame');

                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
