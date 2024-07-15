import 'package:cyber_school/core/models/finance_model.dart';
import 'package:cyber_school/core/utils/api.dart';
import 'package:get/get.dart';

class FinanceService extends GetxService {
  // get school financial data
  Future<Finance> fetchFinances() async {
    final response = await Api.get('/financials');
    return Finance.fromJson(response.data);
  }
}