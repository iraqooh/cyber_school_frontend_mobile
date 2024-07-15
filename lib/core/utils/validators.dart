class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }

    const pattern = r'^[^@\s]+@[^@\s]+\.[^@\s]+$';
    final regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter a valid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  static String? validateStudentID(String? value) {
    if (value == null || value.isEmpty) {
      return 'Student ID cannot be empty';
    }
    // Add more validation rules if needed
    return null;
  }

  static String? validateAmount(double value, double outstandingFees) {
    if (value <= 0) {
      return 'Amount must be greater than zero';
    }
    if (value > outstandingFees) {
      return 'Amount cannot be greater than outstanding fees';
    }
    return null;
  }

  static String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'First name cannot be empty';
    }
    if (value.length < 2) {
      return 'First name must be at least 2 characters long';
    }
    return null;
  }

  static String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Last name cannot be empty';
    }
    if (value.length < 2) {
      return 'Last name must be at least 2 characters long';
    }
    return null;
  }

  static String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username cannot be empty';
    }
    if (value.length < 4) {
      return 'Username must be at least 4 characters long';
    }
    return null;
  }

  static String? validatePhysicalAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Physical address cannot be empty';
    }
    if (value.length < 10) {
      return 'Physical address must be at least 10 characters long';
    }
    return null;
  }

  static String? validateContactNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Contact number cannot be empty';
    }
    const pattern = r'^\+?[0-9]{7,15}$';
    final regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter a valid contact number';
    }
    return null;
  }

  static String? validateClass(String? value) {
    if (value == null || value.isEmpty) {
      return 'Class cannot be empty';
    }
    return null;
  }

  static String? validateDateOfBirth(DateTime? value) {
    if (value == null) {
      return 'Date of birth cannot be empty';
    }
    if (value.isAfter(DateTime.now())) {
      return 'Date of birth cannot be in the future';
    }
    return null;
  }
}