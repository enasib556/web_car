import 'package:flutter/material.dart';
import 'package:cars_web/l10n/app_localizations.dart';
import '../../../core/Theming/font_weights_helper.dart';

class OverviewTab extends StatelessWidget {
  OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> vehicleDetails = [
      {AppLocalizations.of(context)!.vehicleDescription!: 'B01 Ultra Hybrid Wagon 5dr DHT 2sp 1.5L'},
      {AppLocalizations.of(context)!.powerPlantType!: 'Hybrid Electric Vehicle (HEV)'},
      {AppLocalizations.of(context)!.exteriorColour!: 'Crayon Grey'},
      {AppLocalizations.of(context)!.interiorColour!: 'BLACK'},
      {AppLocalizations.of(context)!.bodyType!: 'SUV, 5 doors, 5 seats'},
      {AppLocalizations.of(context)!.transmission!: '2 speed Automatic'},
      {AppLocalizations.of(context)!.engine!: '4 cylinders, Petrol Turbo Intercooled, 1.5L'},
      // {'Fuel consumption combined': '5.2 L/100km'},
      // {'ANCAP safety rating': '5 ★'},
      // {'Registration plate': 'Check with seller'},
      // {'Build date': 'October 2023'},
      // {'Compliance date': 'November 2023'},
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: vehicleDetails.length,
        itemBuilder: (context, index) {
          String key = vehicleDetails[index].keys.first;
          String value = vehicleDetails[index][key]!;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    key,
                    style: const TextStyle(
                      fontWeight: FontWeightHelper.medium,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 64.0),
                Expanded(
                  flex: 3,
                  child: Text(
                    value,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
