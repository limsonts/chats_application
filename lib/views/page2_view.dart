

import 'package:chats/controllers/page2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  final Page2_controller _tabController2 = Get.put(Page2_controller());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Page2'),
        ),
        body: TabBarView(
          children:[ 
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               TextButton(
                onPressed: (){
                  _tabController2.tabSelected(0);
                },
                child: const Text(
                'Page3',),
               ),
            ],
          ),
            const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            ],
          ),
            const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[   
            ],
          ),
          ]
        ),
        bottomNavigationBar: const BottomAppBar(
          child: TabBar(tabs: [
            Tab(text: 'Tab1',),
            Tab(text: 'Tab2',),
            Tab(text: 'Tab3',)
          ]),),
      ),
    );
  }
}
