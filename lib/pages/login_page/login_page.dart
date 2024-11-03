import 'package:cars_web/core/Theming/font_weights_helper.dart';
import 'package:cars_web/core/widgets/green_button.dart';
import 'package:cars_web/l10n/app_localizations.dart';
import 'package:cars_web/pages/login_page/widgets/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/images/images.dart';
import '../../core/routing/routes.dart';
import '../../core/widgets/custom_textField.dart';
import '../../core/widgets/end_drawer.dart';
import '../../utils/responsive_helper.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: const MyEndDrawer(),
      body: Stack(
        children: [
          Image.asset(
            ImagesApp.background_login1,
            fit: BoxFit.cover,
            width: screenSize.width,
            height: screenSize.height,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: responsiveHelper.isDesktop(context) ? 150 : 20,
                vertical: responsiveHelper.isDesktop(context) ? 50 : 15,
              ),
              child: SingleChildScrollView(
                child: Container(
                  width: responsiveHelper.isDesktop(context)
                      ? screenSize.width * 0.4
                      : responsiveHelper.isTablet(context)
                      ? screenSize.width * 0.6
                      : screenSize.width * 0.8,
                  height: responsiveHelper.isDesktop(context)
                      ? screenSize.height * 0.9
                      : responsiveHelper.isTablet(context)
                      ? screenSize.height * 1.4
                      : screenSize.height * 1.2,
                  padding: const EdgeInsets.all(18.0),
                  color: Colors.white.withOpacity(0.8),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: SizedBox(
                                height: screenSize.height * 0.12,
                                child: Image.asset(ImagesApp.logo),
                              ),
                            ),
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
                            const SizedBox(height: 40),
                            Text(
                              AppLocalizations.of(context)?.email ?? 'Email:',
                              style: const TextStyle(
                                color: Color(0xff4D4D4D),
                                fontWeight: FontWeightHelper.semiBold,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 20),
                            TextFieldUsed(
                              controller: _emailController,
                              label: AppLocalizations.of(context)?.enterYourEmail ?? 'Enter your email',
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if ((value ?? '').isEmpty) {
                                  return AppLocalizations.of(context)?.pleaseEnterYourEmail ?? 'Please enter your email';
                                }
                                final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                                if (!emailRegex.hasMatch(value!)) {
                                  return AppLocalizations.of(context)?.pleaseEnterAValidEmailAddress ?? 'Please enter a valid email address';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            Text(
                              AppLocalizations.of(context)?.password ?? 'Password:',
                              style: const TextStyle(
                                color: Color(0xff4D4D4D),
                                fontWeight: FontWeightHelper.semiBold,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 20),
                            TextFieldUsed(
                              controller: _passwordController,
                              label: AppLocalizations.of(context)?.enterYourPassword ?? 'Enter your password',
                              keyboardType: TextInputType.text,
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
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: responsiveHelper.isDesktop(context) ? 124 : responsiveHelper.isTablet(context) ? 80 : 20),
                              child: GreenButton(
                                label: AppLocalizations.of(context)?.login ?? 'Login',
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
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
                                  Text(
                                    AppLocalizations.of(context)?.DontHaveAnyAccount ?? "Don't have an account?",
                                  ),
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
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
