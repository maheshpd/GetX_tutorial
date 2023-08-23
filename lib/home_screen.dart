import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        title: Text("GetX Tutorial"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("GetX Dialog Alert"),
              subtitle: const Text("GetX dialog alert with getX"),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete Chat",
                    titlePadding: const EdgeInsets.only(top: 20),
                    contentPadding: const EdgeInsets.all(20),
                    middleText: "Are you sure you want to delete this chat",
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('Ok')),
                    cancel: TextButton(
                        onPressed: () {}, child: const Text('Cancel')));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("GetX Bottom Sheet"),
              subtitle: const Text("GetX dialog alert with getX"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        ListTile(leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: (){
                              Get.changeTheme(ThemeData.light());
                          },
                        ),

                        ListTile(leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  )
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Hello",
            "Good Morning",
            backgroundColor: Colors.red,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
      ),
    );
  }
}
