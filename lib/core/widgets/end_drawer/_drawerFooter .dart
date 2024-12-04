import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import '../../../l10n/app_localizations.dart';
import '../../../model/locale.dart';
import '../../../utils/responsive_helper.dart';
import '../../icons/icons.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveHelper = GetIt.instance<ResponsiveHelper>();

    return Column(
      children: [
        _FooterItems(),
        SizedBox(height: responsiveHelper.isTablet(context) ? 10 : 30),
        const Divider(color: Color(0xffb3b3b3)),
        const SizedBox(height: 30),
        _SocialMediaIcons(),
      ],
    );
  }
}

class _FooterItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildLanguageTile(
          context, // السياق
          AppLocalizations.of(context)!.language!, // النص
          Colors.grey, // اللون
        ),
        _buildTextTile(AppLocalizations.of(context)!.termsAndConditions!, Colors.grey),
        _buildTextTile(AppLocalizations.of(context)!.privacy!, Colors.grey),
      ],
    );
  }

  Widget _buildTextTile(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _SocialMediaIcon(IconsApp.facebook),
          const SizedBox(width: 10),
          _SocialMediaIcon(IconsApp.twitter),
          const SizedBox(width: 10),
          _SocialMediaIcon(IconsApp.instgram),
          const SizedBox(width: 10),
          _SocialMediaIcon(IconsApp.youtube),
        ],
      ),
    );
  }

  Widget _SocialMediaIcon(String asset) {
    return InkWell(
      onTap: () async {
        const url = 'https://www.facebook.com/people/Auto-Zone-%D8%A7%D9%88%D8%AA%D9%88-%D8%B2%D9%88%D9%86/100084127896033/';
        if (await canLaunch(url)) {
          await launch(url);
        }
      },
      child: Image.asset(asset, height: 40, width: 40),
    );
  }
}
Widget _buildLanguageTile(BuildContext context, String title, Color color) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: ListTile(
      title: InkWell(
        onTap: () {
          Navigator.pop(context);
          _showDropdown(context); // تمرير السياق
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(color: color, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 90,
              child: Row(
                children: [
                  // أيقونة اللغة العربية
                  InkWell(
                    onTap: () {
                      Locale newLocale = const Locale('ar');
                      Provider.of<LocaleModel>(context, listen: false)
                          .set(newLocale);
                    },
                    child: Provider.of<LocaleModel>(context)
                        .currentLocale
                        .languageCode ==
                        'ar'
                        ? SvgPicture.asset('assets/images/ar.svg',
                        width: 30, height: 30)
                        : const SizedBox.shrink(),
                  ),
                  const SizedBox(width: 8),
                  // أيقونة اللغة الإنجليزية
                  InkWell(
                    onTap: () {
                      Locale newLocale = const Locale('en');
                      Provider.of<LocaleModel>(context, listen: false)
                          .set(newLocale);
                    },
                    child: Provider.of<LocaleModel>(context)
                        .currentLocale
                        .languageCode ==
                        'en'
                        ? SvgPicture.asset('assets/images/en.svg',
                        width: 30, height: 30)
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void _showDropdown(BuildContext context) {
  final localeModel = Provider.of<LocaleModel>(context, listen: false);
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 150,
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  SvgPicture.asset('assets/images/en.svg',
                      width: 30, height: 30),
                  const SizedBox(width: 8),
                  const Text('English'),
                ],
              ),
              onTap: () {
                localeModel.set(const Locale('en'));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: [
                  SvgPicture.asset('assets/images/ar.svg',
                      width: 30, height: 30),
                  const SizedBox(width: 8),
                  const Text('العربية'),
                ],
              ),
              onTap: () {
                localeModel.set(const Locale('ar'));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}
