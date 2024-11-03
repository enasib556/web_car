import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../core/Theming/font_weights_helper.dart';
import '../../../core/widgets/green_button.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/responsive_helper.dart';

class OdometerReading extends StatelessWidget {
  final String? selectedCarMake;
  final String? selectedCarModel;
  final String? selectedCarYear;
  final TextEditingController odometerController;
  final String? odometerReading;
  final void Function(String) onOdometerChanged;
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();

   OdometerReading({
    super.key,
    required this.selectedCarMake,
    required this.selectedCarModel,
    required this.selectedCarYear,
    required this.odometerController,
    required this.odometerReading,
    required this.onOdometerChanged,
    required this.onBackPressed,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      padding:  EdgeInsets.symmetric(horizontal: responsiveHelper.isDesktop(context) ? 160:responsiveHelper.isTablet(context)?120:30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 160),
           Text(
             AppLocalizations.of(context)!.addOdometerReadingAr!,
            style: TextStyle(
              fontWeight: FontWeightHelper.extraBold,
              fontSize:responsiveHelper.isDesktop(context) ? 30 : 24,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 50),
          Flexible(
            flex: responsiveHelper.isDesktop(context)?5:responsiveHelper.isTablet(context)?3:1,
            child: Text(
              AppLocalizations.of(context)!.whatsTheOdometerReadingOnYourCarAr!
                  .replaceFirst("{selectedCarMake}", selectedCarMake ?? '')
                  .replaceFirst("{selectedCarModel}", selectedCarModel ?? '')
                  .replaceFirst("{selectedCarYear}", selectedCarYear ?? ''),
              style:  TextStyle(
                fontWeight: FontWeightHelper.regular,
                fontSize: responsiveHelper.isDesktop(context) ? 30 : 24,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 50),
          // Odometer TextField
          Container(
            width: responsiveHelper.isDesktop(context) ? size.width * 0.4 :responsiveHelper.isTablet(context)? size.width * 0.6:size.width*0.7,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              controller: odometerController,
              decoration: const InputDecoration(
                labelText: 'Enter odometer reading',
                suffixText: 'km',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 1),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              keyboardType: TextInputType.number,
              onChanged: onOdometerChanged,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width:  responsiveHelper.isDesktop(context) ? size.width * 0.15 :responsiveHelper.isTablet(context)? size.width * 0.25:size.width*0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: onBackPressed,
                  child:  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.green,
                      ),
                      Text(
                        AppLocalizations.of(context)!.backAr!,
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeightHelper.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width:  responsiveHelper.isDesktop(context) ? size.width * 0.15 :responsiveHelper.isTablet(context)? size.width * 0.25:size.width*0.4,
                child: GreenButton(
                  label: AppLocalizations.of(context)!.nextAr!,
                  onPressed: onNextPressed,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
