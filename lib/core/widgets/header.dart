import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';
import '../../l10n/app_localizations.dart';
import '../../model/locale.dart';
import '../routing/routes.dart';
import 'nav_button.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(color: kGreenColor, width: size.width, height: 15,),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 1000) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.02, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              height: 70,
                            ),
                            Row(
                              children: [
                                NavButton(label: AppLocalizations.of(context)!.home!, ontap: () { Navigator.pushNamed(context, Routes.homeScreen); },),
                                NavButton(label: AppLocalizations.of(context)!.buy!, ontap: () { Navigator.pushNamed(context, Routes.buyScreen);  },),
                                NavButton(label: AppLocalizations.of(context)!.contactUs!, ontap: () {  },),
                                NavButton(label: AppLocalizations.of(context)!.help!, ontap: () {  },),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.notifications, size: 30),
                                  onPressed: () {},
                                ),
                                const SizedBox(width: 8),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: const BorderSide(color: kGreenColor),
                                    padding: const EdgeInsets.all(20),
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.contactUs!,
                                    style: const TextStyle(color: kGreenColor, fontSize: 18),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const SizedBox(
                                  height: 40,
                                  child: VerticalDivider(
                                    width: 20,
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                SizedBox(
                                  width: 100, // Adjust the width to fit the icon only
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: Provider.of<LocaleModel>(context).locale.languageCode ,
                                      icon: Container(), // Hide the default dropdown arrow
                                      isExpanded: true,
                                      items: [
                                        DropdownMenuItem(
                                          value: 'en',
                                          child: Row(
                                            children: [
                                              SvgPicture.asset('assets/images/en.svg', width: 30, height: 30),
                                              const SizedBox(width: 8),
                                              const Text('English'),
                                            ],
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: 'ar',
                                          child: Row(
                                            children: [
                                              SvgPicture.asset('assets/images/ar.svg', width: 30, height: 30),
                                              const SizedBox(width: 8),
                                              const Text('العربية'),
                                            ],
                                          ),
                                        ),
                                      ],
                                      onChanged: (value) {
                                        if (value != null) {
                                          Locale newLocale = Locale(value);
                                          Provider.of<LocaleModel>(context, listen: false).set(newLocale);
                                        }
                                      },
                                      selectedItemBuilder: (BuildContext context) {
                                        return [
                                          SvgPicture.asset('assets/images/en.svg', width: 30, height: 30),
                                          SvgPicture.asset('assets/images/ar.svg', width: 30, height: 30),
                                        ];
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  // Burger menu for smaller screens
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          height: 70,
                        ),
                        IconButton(
                          icon: const Icon(Icons.menu, color: kGreenColor),
                          onPressed: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
