import 'package:cyber_school/core/themes/theme_controller.dart';
import 'package:cyber_school/core/utils/constants.dart';
import 'package:cyber_school/core/utils/helpers.dart';
import 'package:cyber_school/firebase_options.dart';
import 'package:cyber_school/routes/app_pages.dart';
import 'package:cyber_school/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
  Helpers.configLoading();
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        title: AppConstants.appName,
        theme: themeController.lightTheme,
        darkTheme: themeController.darkTheme,
        themeMode: themeController.theme,
        initialRoute: AppRoutes.SPLASH,
        getPages: AppPages.pages,
        builder: EasyLoading.init()
      );
    });
  }
}