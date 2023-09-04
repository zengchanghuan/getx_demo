import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('getx demo'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Getx dialog alert'),
              subtitle: const Text('Getx dialog alert with getx'),
              onTap: () {
                Get.defaultDialog(
                  title: 'delete chat',
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  // middleText: "are u sure u want to delete",
                  confirm: TextButton(
                      onPressed: () {
                        // Navigator.pop(context);
                        Get.back();
                      },
                      child: const Text('ok')),
                  cancel:
                      TextButton(onPressed: () {}, child: const Text('cancel')),
                  content: const Column(
                    children: [
                      Text('Cancel'),
                      Text('Cancel'),
                      Text('Cancel'),
                      Text('Cancel'),
                      Text('Cancel'),
                      Text('Cancel'),
                      Text('Cancel'),
                      Text('Cancel'),
                    ],
                  ),

                  // textConfirm: 'yes',
                  // textCancel: 'No'
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Getx Bottom sheet'),
              subtitle: const Text('Getx dialog alert with getx'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.red,
                    ),
                    child: const Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.light_mode,
                          ),
                          title: Text('light theme'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.dark_mode,
                          ),
                          title: Text('dark theme'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*
          Get.snackbar('Asif Tak', 'subscribe to',
              icon: Icon(Icons.add),
              onTap: (snap){

              },
              backgroundColor: Colors.blue,
              snackPosition: SnackPosition.BOTTOM,
          );
          */
        },
      ),
    );
  }
}
