import 'package:flutter/material.dart';

import '../../../utils/responsive_helper.dart';
import 'package:get_it/get_it.dart';

class CarDetailItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subTitle;
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
   CarDetailItem({super.key, required this.icon, required this.label, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: responsiveHelper.isMobile(context)?25:30, color: Colors.green),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subTitle, style: TextStyle(fontSize: responsiveHelper.isMobile(context)?10:16, color: Colors.grey)),
            Text(label, style: TextStyle(fontSize: responsiveHelper.isMobile(context)?10:16, color: Colors.black)),
          ],
        ),
      ],
    );
  }
}