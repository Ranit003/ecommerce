import 'package:get/get.dart';

class DashboardController extends GetxController{
  var tabIndex=0;
  void updadteIndex(int index){
    tabIndex=index;
    update();
  }
}