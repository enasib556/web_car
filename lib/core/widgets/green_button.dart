import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../utils/responsive_helper.dart';
import 'package:get_it/get_it.dart';

class GreenButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final BorderRadius? borderRadius;
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
   GreenButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: kGreenColor,
        side: const BorderSide(color: kGreenColor),
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(0),
        ),
      ),
      child: Align(
        alignment: Alignment.center, // Center aligns the text within the button
        child: Text(
          label,
          style:  TextStyle(
            color: Colors.white,
            fontSize:responsiveHelper.isDesktop(context)?18:responsiveHelper.isTablet(context)?16:12,
          ),
          textAlign: TextAlign.center, // Center aligns text within Text widget
        ),
      ),
    );
  }
}
