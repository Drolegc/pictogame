
import 'package:get/get.dart';
import 'package:pictogame/utils/categories.dart';

class GameController extends GetxController{

  int maxPoints;
  int timeToPlay;

  String teamName1;
  String teamName2;

  RxInt currentPointTeam1 = 1.obs;
  RxInt currentPointTeam2 = 1.obs;

  Rx<Categorie> currentCategorieTeam1 = Categorie.VERB.obs;
  Rx<Categorie> currentCategorieTeam2 = Categorie.ALL_PLAYS.obs;
}