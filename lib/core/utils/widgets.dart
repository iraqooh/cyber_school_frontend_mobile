import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/payment_model.dart';
import '../models/student_model.dart';

// Student Card
class StudentCard extends StatelessWidget {
  final Student student;

  const StudentCard({super.key, required this.student});

  Widget CustomButton({
    required String label,
    required VoidCallback onPressed,
    Color? color,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      onPressed: onPressed,
      child: Text(label),
    );
  }

  Widget CustomTextFormField({
    required String labelText,
    required TextEditingController controller,
    required String? Function(String?)? validator,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      controller: controller,
      validator: validator,
    );
  }

  Widget CustomNumberInput({
    required String labelText,
    required TextEditingController controller,
    required String? Function(String?)? validator,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      controller: controller,
      validator: validator,
      keyboardType: TextInputType.number,
    );
  }

  // Widget CustomRadioButton({
  //   required String label,
  //   required bool value,
  //   required VoidCallback onChanged,
  // }) {
  //   return RadioButton(
  //     value: value,
  //     groupValue: true,
  //     onChanged: (value) {
  //       onChanged();
  //     },
  //     label: label,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${student.firstName} ${student.lastName}'),
            Text('Gender: ${student.gender}'),
            Text('Date of Birth: ${student.dateOfBirth}'),
            Text('Class: ${student.studentClass}'),
            Text('Status: ${student.status}'),
            Text('Fees Balance: ${student.outstandingFees}'),
          ],
        ),
      ),
    )
    ;
  }
}

// Payment Card
class PaymentCard extends StatelessWidget {
  final Payment payment;

  const PaymentCard({super.key, required this.payment});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Payment ID: ${payment.id}'),
            Text('${payment.student?.firstName} ${payment.student?.lastName}'),
            Text('Amount: ${payment.amount} UGX'),
          ],
        ),
      ),
    );
  }
}

// Custom Button Widget Example
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

// Custom Form Text Input Widget Example
class CustomTextInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const CustomTextInput({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}

// Example of more widgets: Radio buttons, Number input, Statistical chart, AnimatedContainer, etc.

// Custom Animated Parameter Display Widget Example
class AnimatedParameterDisplay extends StatefulWidget {
  final String parameterName;
  final int initialValue;
  final Duration animationDuration;

  const AnimatedParameterDisplay({
    required this.parameterName,
    required this.initialValue,
    this.animationDuration = const Duration(seconds: 1),
  });

  @override
  _AnimatedParameterDisplayState createState() => _AnimatedParameterDisplayState();
}

class _AnimatedParameterDisplayState extends State<AnimatedParameterDisplay> with SingleTickerProviderStateMixin {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
    _startCountAnimation();
  }

  void _startCountAnimation() {
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _currentValue = widget.initialValue; // Update value
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.parameterName),
        TweenAnimationBuilder(
          tween: IntTween(begin: 0, end: _currentValue),
          duration: widget.animationDuration,
          builder: (context, int value, child) {
            return Text(
              value.toString(),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            );
          },
        ),
      ],
    );
  }
}

// Custom Search Bar Widget Example
class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;

  const SearchBar({required this.controller, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

class AnimatedTransitionWidget extends StatelessWidget {
  final Widget child;
  final Duration duration;

  const AnimatedTransitionWidget({
    required this.child,
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: child,
    );
  }
}

class CenteredSVG extends StatelessWidget {
  final String svgPath;

  const CenteredSVG({super.key, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      width: 100,
      height: 100,
      fit: BoxFit.contain,
    );
  }
}
