import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String label;
  Function() ontap;
  NavButton({required this.label,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {},
        child: InkWell(
          onTap: ontap ,
          child: Text(
            label,
            style: const TextStyle(color: Color(0xFF3a3a3a), fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
      ),
    );
  }
}