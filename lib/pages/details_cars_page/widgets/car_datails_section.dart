import 'package:cars_web/l10n/app_localizations.dart';
import 'package:cars_web/pages/details_cars_page/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import '../../../utils/responsive_helper.dart';
import 'car_images.dart';
import 'car_specifications.dart';
import 'car_titleAndLocation.dart';
import 'contact_form.dart';
import 'dealer_comments.dart';
import 'package:get_it/get_it.dart';

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
           Text(AppLocalizations.of(context)!.carDetails!,style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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