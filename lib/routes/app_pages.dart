import 'package:get/get.dart';
import 'package:cyber_school/screens/splash_screen.dart';
import 'package:cyber_school/screens/login_screen.dart';
// import 'package:cyber_school/screens/register_screen.dart';
// import 'package:cyber_school/screens/home_screen.dart';
// import 'package:cyber_school/screens/student_details_screen.dart';
// import 'package:cyber_school/screens/student_edit_screen.dart';
// import 'package:cyber_school/screens/payments_screen.dart';
// import 'package:cyber_school/screens/add_payment_screen.dart';
// import 'package:cyber_school/screens/settings_screen.dart';
//
import 'package:cyber_school/bindings/splash_binding.dart';

import 'app_routes.dart';
// import 'package:cyber_school/bindings/login_binding.dart';
// import 'package:cyber_school/bindings/register_binding.dart';
// import 'package:cyber_school/bindings/home_binding.dart';
// import 'package:cyber_school/bindings/student_details_binding.dart';
// import 'package:cyber_school/bindings/student_edit_binding.dart';
// import 'package:cyber_school/bindings/payments_binding.dart';
// import 'package:cyber_school/bindings/add_payment_binding.dart';
// import 'package:cyber_school/bindings/settings_binding.dart';
// import 'package:cyber_school/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.SPLASH, page: () => const SplashScreen(), binding: SplashBinding()),
    // GetPage(name: AppRoutes.LOGIN, page: () => LoginScreen(), binding: LoginBinding()),
    // GetPage(name: AppRoutes.REGISTER, page: () => RegisterScreen(), binding: RegisterBinding()),
    // GetPage(name: AppRoutes.HOME, page: () => HomeScreen(), binding: HomeBinding()),
    // GetPage(name: AppRoutes.STUDENT_DETAILS, page: () => StudentDetailsScreen(), binding: StudentDetailsBinding()),
    // GetPage(name: AppRoutes.STUDENT_EDIT, page: () => StudentEditScreen(), binding: StudentEditBinding()),
    // GetPage(name: AppRoutes.PAYMENTS, page: () => PaymentsScreen(), binding: PaymentsBinding()),
    // GetPage(name: AppRoutes.ADD_PAYMENT, page: () => AddPaymentScreen(), binding: AddPaymentBinding()),
    // GetPage(name: AppRoutes.SETTINGS, page: () => SettingsScreen(), binding: SettingsBinding()),
  ];
}
