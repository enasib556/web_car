import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({super.key, this.height, this.width, this.child});
  final double? height, width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 8),
            blurRadius: 16,
          ),
        ],
      ),
      child: child,
    );
  }
}