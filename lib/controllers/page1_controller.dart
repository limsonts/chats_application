
import 'package:chats/views/page3_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 class Page1_controller extends GetxController with GetSingleTickerProviderStateMixin    {
     
  late TabController tabController;
  RxBool isback = false.obs;
  var selectedIndex = 0.obs;
  var selectedTabIndex = 0.obs;
    
 @override
  void onInit() {
     tabController = TabController(length: 3, vsync: this);
     super.onInit();
   }

  void changeTabIndex(int index) {
    selectedIndex.value = index;
    print(selectedIndex.value);
    switch (index) {
      case 0:
        Get.toNamed('/page2');
        break;
      case 1:
        dispalybottomsheet();
        break;
      case 2:
          selectedIndex.value =1;
          print(selectedIndex);
        break;
    }
  }
  

  void dispalybottomsheet(){ 
        showModalBottomSheet(
              context:Get.context!,
              builder: (BuildContext context) {
                return Page3(isback: true,);
              },
            );
  
  }
         
       
}

