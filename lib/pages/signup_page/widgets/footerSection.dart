import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/widgets/green_button.dart';
import '../../../core/routing/routes.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/responsive_helper.dart';
import '../../login_page/widgets/user_provider.dart';
import 'package:get_it/get_it.dart';

class FooterWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const FooterWidget({required this.formKey, super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveHelper = GetIt.instance<ResponsiveHelper>();

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: responsiveHelper.isDesktop(context)
                ? 124
                : responsiveHelper.isTablet(context)
                ? 70
                : 40,
          ),
          child: GreenButton(
            label: AppLocalizations.of(context)!.login!,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Provider.of<AuthProvider>(context, listen: false).login();
                Navigator.pushReplacementNamed(context, Routes.homeScreen);
              }
            },
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              Text(AppLocalizations.of(context)!.iAlreadyHaveAccount!),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.loginScreen);
                },
                child: Text(
                  AppLocalizations.of(context)!.login!,
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
