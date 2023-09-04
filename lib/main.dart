import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/home_screen.dart';
import 'package:getx_demo/screen_one.dart';
import 'package:getx_demo/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        // useMaterial3: true,
      ),
      home: const HomeScreen(),
        /*
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/screenOne', page: () => ScreenOne()),
        GetPage(name: '/screenTwo', page: () => const ScreenTwo()),
      ],
      */
    );
  }
}
