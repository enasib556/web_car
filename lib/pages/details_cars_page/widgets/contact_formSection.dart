import 'package:cars_web/core/routing/routes.dart';
import 'package:cars_web/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../utils/responsive_helper.dart';
import 'contact_form.dart';

class ContactFormSection extends StatelessWidget {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
   ContactFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsiveHelper.isDesktop(context)?500:responsiveHelper.isTablet(context)?700:800,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: InkWell(
                  onTap: (){ Navigator.pushNamed(context, Routes.loginScreen);},
                  child:  Text(
                    AppLocalizations.of(context)!.login_for_price!,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
             ContactForm(),
          ],
        ),
      ),
    );
  }
}
