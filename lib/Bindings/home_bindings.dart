import 'package:get/get.dart';
import 'package:pictogame/Controllers/Animations/animations_controller.dart';

class HomeBindings implements Bindings{

  @override
  void dependencies() {

    print("HomeBindings");
    Get.put<AnimationsController>(AnimationsController());
  }

}