import 'package:flutter/material.dart';

import '../../constants.dart';

class GreenButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const GreenButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: kGreenColor,
        side: const BorderSide(color: kGreenColor),
        padding: const EdgeInsets.all(20),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
