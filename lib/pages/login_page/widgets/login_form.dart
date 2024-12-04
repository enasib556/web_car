import 'package:cars_web/pages/login_page/widgets/text_field_widget.dart';
import 'package:cars_web/pages/login_page/widgets/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/Theming/font_weights_helper.dart';
import '../../../core/widgets/green_button.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/responsive_helper.dart';
import '../../../core/routing/routes.dart';
import 'logo_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final responsiveHelper = ResponsiveHelper();
    final screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white.withOpacity(0.8),
      ),
      width: responsiveHelper.isDesktop(context)
          ? screenSize.width * 0.4
          : responsiveHelper.isTablet(context)
          ? screenSize.width * 0.6
          : screenSize.width * 0.8,
      height: responsiveHelper.isDesktop(context)
          ? screenSize.height * 0.9
          : responsiveHelper.isTablet(context)
          ? screenSize.height * 0.95
          : screenSize.height * 0.95,
      padding: const EdgeInsets.all(18.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LogoWidget(),
            const SizedBox(height: 20),
            Center(
              child: Text(
                AppLocalizations.of(context)?.welcomeToEcoCar ?? 'Welcome to EcoCar',
                style: const TextStyle(
                  color: Color(0xff4D4D4D),
                  fontWeight: FontWeightHelper.extraBold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 35),
            TextFieldWidget(
              label: AppLocalizations.of(context)?.email ?? 'Email:',
              controller: _emailController,
              hintText: AppLocalizations.of(context)?.enterYourEmail ?? 'Enter your email',
              validator: (value) {
                if ((value ?? '').isEmpty) {
                  return AppLocalizations.of(context)?.pleaseEnterYourEmail ?? 'Please enter your email';
                }
                final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                if (!emailRegex.hasMatch(value!)) {
                  return AppLocalizations.of(context)?.pleaseEnterAValidEmailAddress ??
                      'Please enter a valid email address';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFieldWidget(
              label: AppLocalizations.of(context)?.password ?? 'Password:',
              controller: _passwordController,
              hintText: AppLocalizations.of(context)?.enterYourPassword ?? 'Enter your password',
              obscureText: !_isPasswordVisible,
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
              validator: (value) {
                if ((value ?? '').isEmpty) {
                  return AppLocalizations.of(context)?.pleaseEnterYourPassword ?? 'Please enter your password';
                }
                return null;
              },
            ),
            SizedBox(height: responsiveHelper.isDesktop(context) ? 40 : 20),
            const Divider(
              thickness: 1,
              color: Color(0xff9E9C9C),
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(height: responsiveHelper.isDesktop(context) ? 30 : 15),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: responsiveHelper.isDesktop(context)
                      ? 124
                      : responsiveHelper.isTablet(context)
                      ? 70
                      : 40,
                ),
                child: GreenButton(
                  label: AppLocalizations.of(context)?.login ?? 'Login',
                  borderRadius: BorderRadius.circular(24),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Provider.of<AuthProvider>(context, listen: false).login();
                      Navigator.pushReplacementNamed(context, Routes.homeScreen);
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Text(AppLocalizations.of(context)?.DontHaveAnyAccount ?? "Don't have an account?"),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signupScreen);
                    },
                    child: Text(
                      AppLocalizations.of(context)?.signup ?? 'Sign up',
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
        ),
      ),
    );
  }
}
