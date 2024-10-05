import 'package:flutter/material.dart';

import '../../../core/widgets/green_button.dart';

class PhoneHeader extends StatelessWidget {
  const PhoneHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "إحصل على سيارتك الجديدة",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 20,),
        GreenButton(
          label: "ابحث عن سيارات",
          onPressed: () {
            // Handle button press
          },
        ),
      ],
    );
  }
}
