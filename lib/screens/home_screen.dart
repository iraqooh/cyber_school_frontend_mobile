import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cyber_school/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: controller.logout,
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen'),
      ),
    );
  }
}
