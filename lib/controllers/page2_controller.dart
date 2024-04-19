import 'package:get/get.dart';

class Page2_controller extends GetxController {
  var selectedIndex = 0.obs;

  void tabSelected(int index) {
    selectedIndex.value = index;
   
    switch (index) {
      case 0:
        Get.toNamed('/page3');
        break;
      case 1:
        break;
      case 2:
        break;
    }
  }
}