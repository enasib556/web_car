import 'package:flutter/material.dart';

class TextFieldUsed extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText; // لتحديد إذا كان النص محجوبًا (للـ password)
  final Widget? suffixIcon; // لتحديد أي أيقونة تضاف في النهاية

  const TextFieldUsed({
    super.key,
    required this.controller,
    required this.label,
    required this.keyboardType,
    required this.validator,
    this.obscureText = false, // إذا كانت قيمة غير محددة، سيكون false افتراضيًا
    this.suffixIcon, // إذا كانت قيمة غير محددة، لن يكون هناك أيقونة افتراضيًا
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(label),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.grey, width: 3),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.grey, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: const BorderSide(color: Colors.green, width: 1),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        suffixIcon: suffixIcon,
      ),
      keyboardType: keyboardType,
      validator: validator,
    );
  }
}
