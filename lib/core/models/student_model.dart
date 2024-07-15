enum Gender {
  F, M
}

class Student {
  final int id;
  final String firstName;
  final String lastName;
  final Gender gender;
  final String parentsContact;
  final String physicalAddress;
  final String category;
  final String studentClass;
  final DateTime dateOfBirth;
  final bool status;
  final double? schoolFees;
  final double? totalPayments;
  final double? outstandingFees;
  final List<Map<String, dynamic>>? payments;

  Student({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.physicalAddress,
    required this.parentsContact,
    required this.studentClass,
    required this.dateOfBirth,
    required this.category,
    required this.status,
    this.schoolFees,
    this.totalPayments,
    this.outstandingFees,
    this.payments
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        gender: json['gender'],
        physicalAddress: json['physical_address'],
        parentsContact: json['parents_contact'],
        category: json['category'],
        studentClass: json['class'],
        dateOfBirth: DateTime.parse(json['date_of_birth']),
        status: json['status'],
        schoolFees: json['school_fees'],
        totalPayments: json['total_payments'],
        outstandingFees: json['outstanding_fees'],
        payments: (json['payments'] as List).map((payment) =>
        payment as Map<String, dynamic>).toList()
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'gender': gender,
      'physical_address': physicalAddress,
      'parents_contact': parentsContact,
      'category': category,
      'class': studentClass,
      'date_of_birth': dateOfBirth.toIso8601String(),
      'status': status,
      'school_fees': schoolFees,
      'initial_payment': totalPayments
    };
  }
}
