import 'package:cars_web/pages/details_cars_page/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import '../../../core/models/carDetails.dart';
import '../../../utils/responsive_helper.dart';
import 'car_images.dart';
import 'car_specifications.dart';
import 'car_titleAndLocation.dart';
import 'contact_form.dart';
import 'dealer_comments.dart';
import 'package:get_it/get_it.dart';

// class CarDetailsSection extends StatelessWidget {
//   final Car car;
//   final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
//
//   CarDetailsSection({super.key, required this.car});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         CarTitleAndLocation(title: car.title, location: car.location),
//         const SizedBox(height: 20),
//         CarImages(mainImage: car.mainImage, additionalImages: car.additionalImages),
//         const SizedBox(height: 20),
//         CarSpecifications(bodyType: car.bodyType, fuelType: car.fuelType, transmission: car.transmission),
//         const SizedBox(height: 20),
//         DealerComments(comments: car.dealerComments),
//         const SizedBox(height: 40),
//         const Text(
//           'Car Details',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           textAlign: TextAlign.start,
//         ),
//         const SizedBox(height: 10),
//         VehicleDetailsTabBar(
//           overview: car.overview, // تمرير بيانات overview
//           features: car.features, // تمرير بيانات features
//         ),
//         if (responsiveHelper.isDesktop(context))
//           Padding(
//             padding: const EdgeInsets.only(bottom: 24.0),
//             child: SizedBox(width: 1000, child: ContactForm()),
//           ),
//       ],
//     );
//   }
// }


class CarDetailsSection extends StatelessWidget {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
  CarDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CarTitleAndLocation(),
          const SizedBox(height: 20),
          CarImages(),
          const SizedBox(height: 20),
          const CarSpecifications(),
          const SizedBox(height: 20),
          const DealerComments(),
          const SizedBox(height: 40,),
          const Text('Car Details',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,),
          const SizedBox(height: 10),
          VehicleDetailsTabBar(),
          if (responsiveHelper.isDesktop(context))Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: SizedBox( width: 1000,
                child: ContactForm()),
          ),
        ]
    );
  }
}