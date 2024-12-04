import 'package:cars_web/core/Theming/font_weights_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../constants.dart';
import '../../l10n/app_localizations.dart';
import '../../model/locale.dart';
import '../../pages/login_page/widgets/user_provider.dart';
import '../routing/routes.dart';
import 'nav_button.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final isLoggedIn = Provider.of<AuthProvider>(context).isLoggedIn;
    const userEmail = 'your_email@example.com';

    return Column(
      children: [
        Container(color: kGreenColor, width: size.width, height: 15),
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
                            horizontal: size.width * 0.0002, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/logo.png',
                              height: 70,
                            ),
                            Row(
                              children: [
                                NavButton(
                                  label: AppLocalizations.of(context)!.home!,
                                  ontap: () {
                                    Navigator.pushNamed(
                                        context, Routes.homeScreen);
                                  },
                                ),
                                NavButton(
                                  label: AppLocalizations.of(context)!.buy!,
                                  ontap: () {
                                    Navigator.pushNamed(
                                        context, Routes.buyScreen);
                                  },
                                ),
                                NavButton(
                                  label: AppLocalizations.of(context)!.sell!,
                                  ontap: () {
                                    Navigator.pushNamed(
                                        context, Routes.sellScreen);
                                  },
                                ),
                                NavButton(
                                  label: AppLocalizations.of(context)!.electricCar!,
                                  ontap: () {
                                    Navigator.pushNamed(
                                        context, Routes.buyScreen);
                                  },
                                ),
                                NavButton(
                                  label: AppLocalizations.of(context)!.contactUs!,
                                  ontap: () {},
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.notifications, size: 30),
                                  onPressed: () {},
                                ),
                                const SizedBox(width: 8),
                                isLoggedIn
                                    ? PopupMenuButton<int>(
                                  icon: const Icon(
                                    Icons.account_circle,
                                    color: Color(0xff4D4D4D),
                                    size: 32,
                                  ),
                                  color: Colors.white,
                                  offset: const Offset(-70, 50),
                                  onSelected: (value) {
                                    if (value == 1) {
                                      // Profile selected
                                    } else if (value == 2) {
                                      Provider.of<AuthProvider>(context, listen: false)
                                          .logout();
                                    }
                                  },
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      value: 1,
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(maxWidth: 200),
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              userEmail,
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Divider(),
                                          ],
                                        ),
                                      ),
                                    ),
                                    PopupMenuItem(
                                      value: 2,
                                      child: ConstrainedBox(
                                        constraints: const BoxConstraints(maxWidth: 170),
                                        child:  Text(
                                          AppLocalizations.of(context)!.logout!,
                                          style: const TextStyle(color: Colors.red,fontWeight: FontWeightHelper.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                                    : TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Routes.loginScreen);
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    side: const BorderSide(color: kGreenColor),
                                    padding: const EdgeInsets.all(20),
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.login!,
                                    style: const TextStyle(
                                        color: kGreenColor, fontSize: 18),
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
                                  width: 100,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: Provider.of<LocaleModel>(context).currentLocale.languageCode,
                                      icon: Container(),
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
                                          Provider.of<LocaleModel>(context, listen: false)
                                              .set(newLocale);
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
