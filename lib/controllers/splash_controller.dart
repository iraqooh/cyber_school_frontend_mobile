import 'package:cyber_school/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _checkUserStatus();
  }

  void _checkUserStatus() async {
    await Future.delayed(const Duration(seconds: 3));
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      // user already logged in
      Get.toNamed(AppRoutes.HOME);
    } else {
      // user is not logged in
      Get.offAllNamed(AppRoutes.LOGIN);
    }
  }
}