class Finance {
  final int registeredStudentsCount;
  final double totalExpectedFees;
  final double totalPayments;
  final double percentagePaid;
  final double outstandingFees;

  Finance({
    required this.registeredStudentsCount,
    required this.totalExpectedFees,
    required this.totalPayments,
    required this.percentagePaid,
    required this.outstandingFees,
  });

  factory Finance.fromJson(Map<String, dynamic> json) {
    return Finance(
      registeredStudentsCount: json['registeredStudentsCount'],
      totalExpectedFees: json['totalExpectedFees'],
      totalPayments: json['totalPayments'],
      percentagePaid: json['percentagePaid'],
      outstandingFees: json['outstandingFees'],
    );
  }
}
