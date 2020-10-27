import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pictogame/colors.dart';

class PictogameTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 15),
      width: Get.width*0.90,
      decoration: BoxDecoration(
        //color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("PictoGame",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: PictoColors.brown),),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.infoCircle,color: PictoColors.brown,size: 30,),
            onPressed: (){
              Get.defaultDialog(
                title: "¿Como jugar?",
                content: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Ut leo. \n Donec posuere vulputate arcu. Nam pretium turpis et arcu.",
                    textAlign: TextAlign.center,
                  ),
                ),
                confirm: FlatButton(
                  child: Text("Ok"),
                  onPressed: Get.back,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
