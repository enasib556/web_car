import 'package:cars_web/core/routing/routes.dart';
import 'package:cars_web/core/widgets/bordered_button.dart';
import 'package:cars_web/l10n/app_localizations.dart';
import 'package:cars_web/pages/home_page/widgets/all_cars/all_cars.dart';
import 'package:cars_web/pages/home_page/widgets/new_cars/new_cars_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../utils/responsive_helper.dart';

class HomeBody extends StatelessWidget {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
   HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
           AppLocalizations.of(context)!.newcars!,
            style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFe5e5e5), width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start, // Aligns to the start
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5FFE5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Icon(CupertinoIcons.car),
                  ),
                ),
                const SizedBox(height: 10),
                 Text(
                  AppLocalizations.of(context)!.areyoulookingforanewcar!,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20), // Adjusted spacing
                NewCarsList(),
                const SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width:responsiveHelper.isMobile(context)?MediaQuery.of(context).size.width * 0.5:responsiveHelper.isTablet(context) ?MediaQuery.of(context).size.width * 0.3:MediaQuery.of(context).size.width * 0.2,
                    child: BorderedButton(
                      label: AppLocalizations.of(context)!.discovermorecars!,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.buyScreen);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const AllCars(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
