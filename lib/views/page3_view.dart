
import 'package:chats/controllers/page1_controller.dart';
import 'package:chats/module/chat_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  bool? isback ;
  final Page1_controller _tabController3 = Get.put(Page1_controller());
   Page3({this.isback}) ;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading:false,
            leading: 
           isback == true?
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.close)): IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back))
          ,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Page3'),
        
        ),
        body: TabBarView(
          children:[ 
            FutureBuilder(future: Future.delayed(const Duration(seconds: 1)),
             builder: (context,snapshot){
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  itemCount:  jsonData['page3']?.length,
                  itemBuilder: (context,index)
                  {
                   return ListTile(    
                    title: Text(jsonData['page3']![index],style: TextStyle(color: Colors.black),)
                   );
                  }
                  );     
                 } else {
                  return Center(child: Text('Error loading data'));
                }    
             }),
            const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
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
