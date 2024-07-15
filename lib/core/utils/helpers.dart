import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';

class Helpers {
  static String formatCurrency(double amount) {
    final formatter = NumberFormat.currency(locale: 'en-US', symbol: 'UGX');
    return formatter.format(amount);
  }

  static String formatDate(DateTime date) {
    final formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }

  static String formatDateTime(DateTime date) {
    final formatter = DateFormat('yyyy-MM-dd HH:mm');
    return formatter.format(date);
  }

  static void configLoading() {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorColor = Colors.blue
      ..textColor = Colors.blue
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = true;
  }
}