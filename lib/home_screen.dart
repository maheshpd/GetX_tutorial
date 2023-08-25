import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/screen_one.dart';

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
        title: const Text("GetX Tutorial"),
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height * .3,
        height: Get.height * .5,
        width: Get.width * .8,
        color: Colors.red,
        child: Center(
          child: Text("Center"),
        ),
      ),
    );
  }
}
