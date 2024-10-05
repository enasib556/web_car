import 'package:flutter/material.dart';
import '../../constants.dart';


class BorderedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const BorderedButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(color: kGreenColor),
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(color: kGreenColor, fontSize: 20),
      ),
    );
  }
}
