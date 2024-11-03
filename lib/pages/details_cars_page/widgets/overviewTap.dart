import 'package:flutter/material.dart';

import '../../../core/Theming/font_weights_helper.dart';

// class OverviewTab extends StatelessWidget {
//   final List<Map<String, String>> overview;
//
//   OverviewTab({super.key, required this.overview});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: ListView.builder(
//         itemCount: overview.length,
//         itemBuilder: (context, index) {
//           String key = overview[index].keys.first;
//           String value = overview[index][key]!;
//           return Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   flex: 5,
//                   child: Text(
//                     key,
//                     style: const TextStyle(fontWeight: FontWeightHelper.medium, fontSize: 16),
//                   ),
//                 ),
//                 const SizedBox(width: 64.0),
//                 Expanded(
//                   flex: 3,
//                   child: Text(
//                     value,
//                     textAlign: TextAlign.start,
//                     style: TextStyle(color: Colors.grey[700]),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

class OverviewTab extends StatelessWidget {
  final List<Map<String, String>> vehicleDetails = [
    {'Vehicle description': 'B01 Ultra Hybrid Wagon 5dr DHT 2sp 1.5L'},
    {'Powerplant type': 'Hybrid Electric Vehicle (HEV)'},
    {'Exterior colour': 'Crayon Grey'},
    {'Interior colour': 'BLACK'},
    {'Body type': 'SUV, 5 doors, 5 seats'},
    {'Transmission': '2 speed Automatic'},
    {'Engine': '4 cylinders, Petrol Turbo Intercooled, 1.5L'},
    {'Fuel consumption combined': '5.2 L/100km'},
    {'ANCAP safety rating': '5 ★'},
    {'Registration plate': 'Check with seller'},
    {'Build date': 'October 2023'},
    {'Compliance date': 'November 2023'},
  ];

  OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
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
                    style: const TextStyle(fontWeight:  FontWeightHelper.medium,fontSize: 16,),
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
