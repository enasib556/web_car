import 'package:flutter/material.dart';
import '../../../core/images/images.dart';
import '../../../l10n/app_localizations.dart';
import '../../../core/Theming/font_weights_helper.dart';

class HeaderWidget extends StatelessWidget {
  final Size screenSize;

  const HeaderWidget({required this.screenSize, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            height: screenSize.height * 0.10,
            child: Image.asset(ImagesApp.logo),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: Text(
            AppLocalizations.of(context)!.welcomeToEcoCar!,
            style: const TextStyle(
              color: Color(0xff4D4D4D),
              fontWeight: FontWeightHelper.extraBold,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
