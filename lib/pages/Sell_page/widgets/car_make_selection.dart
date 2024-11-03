import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../core/Theming/font_weights_helper.dart';
import '../../../core/widgets/green_button.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/responsive_helper.dart';

class CarMakeSelection extends StatelessWidget {
  final String? selectedCarMake;
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
  final void Function(String?) onCarMakeChanged;
  final void Function() onNextPressed;

  CarMakeSelection({
    super.key,
    required this.selectedCarMake,
    required this.onCarMakeChanged,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height, // Full screen height
      padding:  EdgeInsets.symmetric(horizontal: responsiveHelper.isDesktop(context) ? 160:responsiveHelper.isTablet(context)?120:30,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text widget no longer needs to be constant
          Flexible(
            flex: responsiveHelper.isDesktop(context)?5:responsiveHelper.isTablet(context)?3:1,
            child: Text(
              AppLocalizations.of(context)!.letsStartToSellCar!,
              style: TextStyle(
                fontWeight: FontWeightHelper.extraBold,
                fontSize: responsiveHelper.isDesktop(context) ? 30 : 24,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 70),
          // Dropdown Button for Car Make
          Container(
            width: responsiveHelper.isDesktop(context) ? size.width * 0.4 :responsiveHelper.isTablet(context)? size.width * 0.6:size.width*0.7,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonFormField<String>(
              value: selectedCarMake,
              decoration: const InputDecoration(
                labelText: 'e.g. Mazda, Ford, BMW',
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 1),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              items: <String>['Mazda', 'Ford', 'BMW', 'Toyota', 'Honda']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: onCarMakeChanged,
            ),
          ),
          //const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: responsiveHelper.isDesktop(context) ? size.width * 0.15 :responsiveHelper.isTablet(context)? size.width * 0.25:size.width*0.4,
                // Button takes the full screen width
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
