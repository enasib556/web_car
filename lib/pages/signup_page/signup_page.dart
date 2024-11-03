import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get_it/get_it.dart';
import '../../core/Theming/font_weights_helper.dart';
import '../../core/images/images.dart';
import '../../core/routing/routes.dart';
import '../../core/widgets/custom_textField.dart';
import '../../core/widgets/end_drawer.dart';
import '../../core/widgets/green_button.dart';
import '../../l10n/app_localizations.dart';
import '../../utils/responsive_helper.dart';
import '../login_page/widgets/user_provider.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _PhoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();

  @override
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
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
              padding:  EdgeInsets.symmetric(horizontal: responsiveHelper.isDesktop(context)?150:20,vertical: responsiveHelper.isDesktop(context)?15:15),
              child: Container(
                width: responsiveHelper.isDesktop(context) ? screenSize.width * 0.4 : responsiveHelper.isTablet(context) ? screenSize.width * 0.6:screenSize.width * 0.8,
                height: responsiveHelper.isDesktop(context) ? screenSize.height * 0.95 : responsiveHelper.isTablet(context) ? screenSize.height * 1.4:screenSize.height * 1.2,
                padding: const EdgeInsets.all(18.0),
                color: Colors.white.withOpacity(0.8),
                child: Padding(
                  padding:  EdgeInsets.all(responsiveHelper.isDesktop(context)?24:5),
                  child: SingleChildScrollView(
                    //scrollDirection: Axis.horizontal,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: SizedBox(
                              height: screenSize.height * 0.10,
                              child: Image.asset(ImagesApp.logo),
                            ),
                          ),
                           SizedBox(height: responsiveHelper.isDesktop(context)?10.0:5),
                           Center(
                            child: Text(
                              AppLocalizations.of(context)!.welcomeToEcoCar!,
                              style: const TextStyle(
                                color: Color(0xff4D4D4D),
                                fontWeight: FontWeightHelper.extraBold,
                                fontSize:18,
                              ),
                            ),
                          ),
                           const SizedBox(height:10),
                            Text(
                            AppLocalizations.of(context)!.name!,
                            style: const TextStyle(
                              color: Color(0xff4D4D4D),
                              fontWeight: FontWeightHelper.semiBold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 10),
                          TextFieldUsed(
                            label: AppLocalizations.of(context)!.enterYourName!,
                            controller: _nameController,
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!.pleaseEnterYourName!;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                            Text(
                             AppLocalizations.of(context)!.phone!,
                            style: const TextStyle(
                              color: Color(0xff4D4D4D),
                              fontWeight: FontWeightHelper.semiBold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 10),
                          TextFieldUsed(
                            label: AppLocalizations.of(context)!.enterYourPhone!,
                            controller: _PhoneController,
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!.pleaseEnterYourPhone!;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                            Text(
                            AppLocalizations.of(context)!.email!,
                            style: const TextStyle(
                              color: Color(0xff4D4D4D),
                              fontWeight: FontWeightHelper.semiBold,
                              fontSize:14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 10),
                          TextFieldUsed(
                            controller: _emailController,
                            label: AppLocalizations.of(context)!.enterYourEmail!,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!.pleaseEnterYourEmail!;
                              }
                              final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                              if (!emailRegex.hasMatch(value)) {
                                return AppLocalizations.of(context)!.pleaseEnterAValidEmailAddress!;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                            Text(
                             AppLocalizations.of(context)!.password!,
                            style: const TextStyle(
                              color: Color(0xff4D4D4D),
                              fontWeight: FontWeightHelper.semiBold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 10),
                          TextFieldUsed(
                            controller: _passwordController,
                            label: AppLocalizations.of(context)!.enterYourPassword!,
                            keyboardType: TextInputType.text,
                            obscureText: !_isPasswordVisible,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordVisible = !_isPasswordVisible;
                                });
                              },
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!.pleaseEnterYourPassword!;
                              }
                              return null;
                            },
                          ),
                           SizedBox(height: responsiveHelper.isDesktop(context)?30:20),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal:  responsiveHelper.isDesktop(context)?124:responsiveHelper.isTablet(context)?70:40),
                            child: GreenButton(
                              label: AppLocalizations.of(context)!.login!,
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Provider.of<AuthProvider>(
                                      context, listen: false)
                                      .login();
                                  Navigator.pushReplacementNamed(
                                      context, Routes.homeScreen);
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
                                  onTap: (){ Navigator.pushNamed(context, Routes.loginScreen);},
                                  child:  Text(
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
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}