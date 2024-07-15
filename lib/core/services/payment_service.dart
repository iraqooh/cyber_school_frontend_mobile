import 'package:get/get.dart';

import '../models/payment_model.dart';
import '../utils/api.dart';

class PaymentService extends GetxService {
  // get all payments
  Future<List<Payment>> fetchPayments() async {
    final response = await Api.get('/payment-details');
    return (response.data as List).map((payment) => Payment.fromJson(payment)).toList();
  }

  // make a payment
  Future<void> addPayment(Payment payment) async {
    await Api.post('/payments', data: payment.toJson());
  }
}
