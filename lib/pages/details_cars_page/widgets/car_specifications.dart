import 'package:flutter/material.dart';
import 'car_detail_Item.dart';

// class CarSpecifications extends StatelessWidget {
//   final String bodyType;
//   final String fuelType;
//   final String transmission;
//   const CarSpecifications({super.key, required this.bodyType, required this.fuelType, required this.transmission});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children:  [
//         Expanded(
//           child: CarDetailItem(
//             icon: Icons.directions_car,
//             label:  bodyType,
//             subTitle: 'Body type',
//           ),
//         ),
//         Expanded(
//           child: CarDetailItem(
//             icon: Icons.local_gas_station,
//             label: fuelType,
//             subTitle: 'Fuel',
//           ),
//         ),
//         Expanded(
//           child: CarDetailItem(
//             icon: Icons.settings,
//             label: transmission,
//             subTitle: 'Transmission',
//           ),
//         ),
//       ],
//     );
//   }
// }

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
            subTitle: 'Body type',
          ),
        ),
        Expanded(
          child: CarDetailItem(
            icon: Icons.local_gas_station,
            label: "Hybrid",
            subTitle: 'Fuel',
          ),
        ),
        Expanded(
          child: CarDetailItem(
            icon: Icons.settings,
            label: "Automatic",
            subTitle: 'Transmission',
          ),
        ),
      ],
    );
  }
}
