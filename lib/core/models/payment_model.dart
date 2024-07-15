import 'package:cyber_school/core/models/student_model.dart';

class Payment {
  final int id;
  final int studentId;
  final double amount;
  final DateTime createdAt;
  final Student? student;

  Payment({
    required this.id,
    required this.studentId,
    required this.amount,
    required this.createdAt,
    this.student
  });

  factory Payment.fromJson(Map<String, dynamic> json) {
    return Payment(
      id: json['payment_id'],
      studentId: json['student']['student_id'],
      amount: json['amount'],
      createdAt: DateTime.parse(json['createdAt']),
      student: Student.fromJson(json['student'])
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'student_id': studentId,
      'amount': amount
    };
  }
}
