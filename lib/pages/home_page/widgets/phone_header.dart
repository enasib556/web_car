import 'package:cars_web/l10n/app_localizations.dart';
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
          label:AppLocalizations.of(context)!.getCar!,
          onPressed: () {
            // Handle button press
          },
        ),
      ],
    );
  }
}
