import 'package:cars_web/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'car_detail_Item.dart';

class CarSpecifications extends StatelessWidget {
  const CarSpecifications({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Expanded(
          child: CarDetailItem(
            icon: Icons.directions_car,
            label: "SUV",
            subTitle: AppLocalizations.of(context)!.bodyType!,
          ),
        ),
        Expanded(
          child: CarDetailItem(
            icon: Icons.local_gas_station,
            label: "Hybrid",
            subTitle: AppLocalizations.of(context)!.fuel!,
          ),
        ),
        Expanded(
          child: CarDetailItem(
            icon: Icons.settings,
            label: "Automatic",
            subTitle: AppLocalizations.of(context)!.transmission!,
          ),
        ),
      ],
    );
  }
}
