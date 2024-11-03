import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../core/Theming/font_weights_helper.dart';
import '../../../core/widgets/green_button.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/responsive_helper.dart';

class CarYearSelection extends StatelessWidget {
  final String? selectedCarMake;
  final String? selectedCarModel;
  final List<String> availableYears;
  final String? selectedCarYear;
  final void Function(String?) onYearChanged;
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();

   CarYearSelection({
    super.key,
    required this.selectedCarMake,
    required this.selectedCarModel,
    required this.availableYears,
    required this.selectedCarYear,
    required this.onYearChanged,
    required this.onBackPressed,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      padding:  EdgeInsets.symmetric(horizontal:  responsiveHelper.isDesktop(context) ? 160:responsiveHelper.isTablet(context)?120:30,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Center(
            child: Text(
              '$selectedCarMake $selectedCarModel',
              style: const TextStyle(fontWeight: FontWeightHelper.bold),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 160),
          Flexible(
            flex: responsiveHelper.isDesktop(context)?5:responsiveHelper.isTablet(context)?3:1,
            child: Text(
              AppLocalizations.of(context)!.whatsTheBuildYearOfYourSelectedCarAr!
                  .replaceFirst("{selectedCarMake}", selectedCarMake ?? '')
                  .replaceFirst("{selectedCarModel}", selectedCarModel ?? ''),
              style:  TextStyle(
                fontWeight: FontWeightHelper.extraBold,
                fontSize: responsiveHelper.isDesktop(context) ? 30 : 24,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 50),
          // Dropdown for Car Year
          Container(
            height: 200,
            width: responsiveHelper.isDesktop(context) ? size.width * 0.4 :responsiveHelper.isTablet(context)? size.width * 0.6:size.width*0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'e.g. 2020, 2021, 2022',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 1),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              items: availableYears.map((String year) {
                return DropdownMenuItem<String>(
                  value: year,
                  child: Text(year),
                );
              }).toList(),
              value: selectedCarYear,
              onChanged: onYearChanged,
            ),
          ),
          const SizedBox(height: 10),
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
                  label:  AppLocalizations.of(context)!.nextAr!,
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
