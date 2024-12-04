import 'package:cars_web/l10n/app_localizations.dart';
import 'package:flutter/material.dart';


class DealerComments extends StatelessWidget {
  const DealerComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          AppLocalizations.of(context)!.commentsFromDealer!,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          "Introducing the all-new 2023 GWM Haval H6 Lux Hybrid! This stunning vehicle combines cutting-edge technology, unmatched performance, and sleek design, making it the perfect choice for those seeking an exceptional driving experience.  Let's start with the basics. This car is brand new, straight from the production line, guaranteeing its pristine condition. With its release in 2023, you can be confident that you... ",
          maxLines: 4,
          overflow: TextOverflow.clip,
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
      ],
    );
  }
}
