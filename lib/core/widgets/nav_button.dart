import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String label;

  NavButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(color: Color(0xFF3a3a3a), fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }
}