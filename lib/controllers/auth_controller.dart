import 'dart:async';

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../core/services/auth_service.dart';
import '../routes/app_routes.dart';

class AuthController extends GetxController {
  final AuthService _authService = AuthService();

  final Rx<User?> firebaseUser = Rx<User?>(null);
  StreamSubscription? _authStreamSubscription;

  @override
  void onInit() {
    _authStreamSubscription = _authService.authStateChanges.listen((User? user) {
      firebaseUser.value = user;
    });
    super.onInit();
  }

  @override
  void onClose() {
    _authStreamSubscription?.cancel();
    super.onClose();
  }

  Future<void> signInWithGoogle() async {
    try {
      User? user = await _authService.signInWithGoogle();
      if (user != null) {
        Get.toNamed(AppRoutes.HOME); // Navigate to home on successful login
      } else {
        Get.snackbar('Error', 'Failed to sign in with Google',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign in with Google: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> signOut() async {
    try {
      await _authService.logout();
      Get.offAllNamed(AppRoutes.LOGIN); // Navigate to login after sign-out
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign out: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
