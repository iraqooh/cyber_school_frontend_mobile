import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../controllers/auth_controller.dart';

class AuthBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
