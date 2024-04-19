
import 'package:chats/controllers/page1_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget  {
  
  final Page1_controller _pageController = Get.put(Page1_controller());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(  
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Page1'),
        ),
        body: TabBarView(
          controller:  _pageController.tabController,
          children:[ 
            Column(   
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               TextButton(
                onPressed: (){
                  _pageController.changeTabIndex(0);
                },
                child: const Text(
                'Page2',),
               ),  
            ],
          ),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               TextButton(
                onPressed: (){
                  _pageController.changeTabIndex(1);
                },
                child: const Text(
                'Page3',),
               ), 
            ],
          ),
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               TextButton(
                  onPressed: (){
                   _pageController.tabController.animateTo(1);
                    },
                  child: const Text(
                  'Tab2',),  
               ),
              
            ],
          ),
          ]
        ),
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
            controller: _pageController.tabController,
            tabs: const [
            Tab(text: 'Tab1',),
            Tab(text: 'Tab2',),
            Tab(text: 'Tab3',)
          ],  
          ),
          ),
      ),
    );
  }
}
