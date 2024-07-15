import 'dart:ui';

import 'package:cyber_school/controllers/splash_controller.dart';
import 'package:cyber_school/core/utils/constants.dart';
import 'package:cyber_school/core/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CenteredSVG(svgPath: 'assets/svgs/cyberschool.svg'),
            SizedBox(height: 20),
            Text(
              AppConstants.appName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
