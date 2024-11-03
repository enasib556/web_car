import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../utils/responsive_helper.dart';
import 'package:get_it/get_it.dart';
class BorderedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();


   BorderedButton({
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
      child: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(color: kGreenColor, fontSize:responsiveHelper.isDesktop(context)?18:responsiveHelper.isTablet(context)?16:12),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
