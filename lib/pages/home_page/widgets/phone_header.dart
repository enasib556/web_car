import 'package:cars_web/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';
import '../../../core/widgets/green_button.dart';

class PhoneHeader extends StatelessWidget {
  const PhoneHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.getCar!,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 20,),
        GreenButton(
          label:AppLocalizations.of(context)!.getCar!,
          onPressed: () {
            Navigator.pushNamed(context, Routes.buyScreen);
          },
        ),
      ],
    );
  }
}
