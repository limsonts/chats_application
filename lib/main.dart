import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/page1_view.dart';
import 'views/page2_view.dart';
import 'views/page3_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      
      ),
      initialRoute: '/Page1',
      getPages: [
        GetPage(name: '/Page1', page: () => Page1()),
         GetPage(name: '/page2', page: () => Page2()),
         GetPage(name: '/page3', page: () => Page3()),
      ],
    );
  }
}


