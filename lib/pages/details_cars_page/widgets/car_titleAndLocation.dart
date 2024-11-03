import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/Theming/font_weights_helper.dart';

// class CarTitleAndLocation extends StatelessWidget {
//
//   const CarTitleAndLocation({super.key,required this.title, required this.location});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//         title,
//           style:const  TextStyle(fontSize: 26, fontWeight: FontWeightHelper.extraBold),
//         ),
//         Row(
//           children: [
//             const Icon(Icons.location_on),
//             Text(location),
//           ],
//         ),
//       ],
//     );
//   }
// }

class CarTitleAndLocation extends StatelessWidget {
  const CarTitleAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '2023 GWM Haval H6 Lux Hybrid Auto',
          style: TextStyle(fontSize: 26, fontWeight: FontWeightHelper.extraBold),
        ),
        Row(
          children: [
            Icon(Icons.location_on),
            Text(' QLD . Dealer demo'),
          ],
        ),
      ],
    );
  }
}