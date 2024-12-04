import 'package:cars_web/pages/home_page/widgets/searchWidget/catgory_car.dart';
import 'package:cars_web/pages/home_page/widgets/searchWidget/subDropDown.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/widgets/my_card.dart';
import '../../../../l10n/app_localizations.dart';
import 'customDropDown.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  String? selectedBodyType;
  String? selectedModel;
  String? selectedLocation;
  String? selectedCondition;
  String? selectedPriceRange;

  final List<String> bodyTypes = [
    'سيدان',
    'كوبيه',
    'هاتشباك',
    'SUV',
    'كروس أوفر',
    'بيك أب',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyCard(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.make!,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          CustomDropDown(
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedBodyType = newValue;
                              });
                            },
                            items: bodyTypes,
                            hint: AppLocalizations.of(context)!.allmakes!,
                            selectedValue: selectedBodyType,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.model!,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          CustomDropDown(
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedBodyType = newValue;
                              });
                            },
                            items: bodyTypes,
                            hint: AppLocalizations.of(context)!.allmodels!,
                            selectedValue: selectedBodyType,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.bodytype!,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          CustomDropDown(
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedBodyType = newValue;
                              });
                            },
                            items: bodyTypes,
                            hint: AppLocalizations.of(context)!.allbodytypes!,
                            selectedValue: selectedBodyType,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: kGreenColor,
                    minimumSize: const Size(120, 48),
                    // Adjust width and height as needed
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16), // Adjust padding as needed
                  ),
                  child:  Text(
                    AppLocalizations.of(context)!.search!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Subdropdown(
                    selectedValue: selectedBodyType,
                    hint: AppLocalizations.of(context)!.location!,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedBodyType = newValue;
                      });
                    },
                    items: bodyTypes),
                Subdropdown(
                    selectedValue: selectedBodyType,
                    hint: AppLocalizations.of(context)!.newandused!,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedBodyType = newValue;
                      });
                    },
                    items: bodyTypes),
                Subdropdown(
                    selectedValue: selectedBodyType,
                    hint: AppLocalizations.of(context)!.lowprice!,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedBodyType = newValue;
                      });
                    },
                    items: bodyTypes),
                Subdropdown(
                    selectedValue: selectedBodyType,
                    hint: AppLocalizations.of(context)!.highprice!,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedBodyType = newValue;
                      });
                    },
                    items: bodyTypes),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
           Padding(
             padding: const EdgeInsets. symmetric(horizontal: 15),
             child: Text(AppLocalizations.of(context)!.searchbycar! ,
                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                 textAlign: TextAlign.start,
             ),
           ),
          Row(
            children: [
              CatgoryCar(
                image:
                    'https://resource.csnstatic.com/mobile/carsales/api/home-categories/Family.png',
                title: AppLocalizations.of(context)!.family!,
              ),
              CatgoryCar(
                image:
                    'https://resource.csnstatic.com/mobile/carsales/api/home-categories/First.png',
                title: AppLocalizations.of(context)!.ordinary!,
              ),
              CatgoryCar(
                  image:
                      'https://resource.csnstatic.com/mobile/carsales/api/home-categories/Prestige.png',
                  title: AppLocalizations.of(context)!.luxurious!),
            ],
              ),
            ],
      ),
    );
  }
}
