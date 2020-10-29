import 'package:get/get.dart';
import 'package:pictogame/Controllers/Animations/animations_controller.dart';
import 'package:pictogame/Controllers/Game/game_controller.dart';

class NewPlayBindings implements Bindings{

  @override
  void dependencies() {
    print("NewPlayBindings");

    Get.put<GameController>(GameController());
    Get.put<AnimationsController>(AnimationsController());
  }

}