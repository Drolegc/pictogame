import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pictogame/Controllers/Animations/animations_controller.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';
import 'package:pictogame/colors.dart';

class NewPlayFront extends StatefulWidget {
  @override
  _NewPlayFrontState createState() => _NewPlayFrontState();
}

class _NewPlayFrontState extends State<NewPlayFront> {

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _controllerMaxPoints = TextEditingController();
  final TextEditingController _controllerTime = TextEditingController();
  final AnimationsController _animationsController = Get.find();
  final GameController _gameController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: PictoColors.red,
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
                    controller: _controllerMaxPoints,
                    keyboardType: TextInputType.number,
                    validator: (val){
                      return (val.isEmpty || val == '0') ? 'Please enter some valid value' : null;
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
                      hintText: "Max points to win",
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color:Colors.white),
                      prefixIcon: Icon(FontAwesomeIcons.medal,color: Colors.white,),
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
                    controller: _controllerTime,
                    keyboardType: TextInputType.number,
                    validator: (val){
                      return (val.isEmpty || val == '0') ? 'Please enter some valid value' : null;
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
                      prefixIcon: Icon(FontAwesomeIcons.stopwatch,color: Colors.white,),
                      hintText: "Seconds",
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
          FlatButton(
            color: PictoColors.brown,
            child: Text("Next",style: TextStyle(color: Colors.white),),
            onPressed: (){
              if(!_form.currentState.validate())
                return;

              _gameController.maxPoints = int.tryParse(_controllerMaxPoints.text);
              _gameController.timeToPlay = int.tryParse(_controllerTime.text);

              _animationsController.cardKey.currentState.toggleCard();
            },
          )
        ],
      ),
    );
  }
}
