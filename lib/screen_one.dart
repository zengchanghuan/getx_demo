import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/screen_two.dart';

class ScreenOne extends StatefulWidget {
  var name;

   ScreenOne({super.key,  this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('screen one '+Get.arguments[0]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    // Get.back();
                    Get.to(const ScreenTwo());
                  },
                  child: const Text('go to screen two'))),
        ],
      ),
    );
  }
}
