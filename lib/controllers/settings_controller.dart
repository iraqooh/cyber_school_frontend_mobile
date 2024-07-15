import 'package:cyber_school/core/services/auth_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final AuthService authService = Get.find<AuthService>();

  @override
  void onInit() {
    super.onInit();
    // fetch students
    // fetch school financials
  }

  void logout() {
    authService.logout();
    Get.offAllNamed('/login');
  }
}