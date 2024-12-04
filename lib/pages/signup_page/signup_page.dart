import 'package:cars_web/pages/signup_page/widgets/footerSection.dart';
import 'package:cars_web/pages/signup_page/widgets/formFieldWidget.dart';
import 'package:cars_web/pages/signup_page/widgets/headerWidget.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../core/images/images.dart';
import '../../core/widgets/end_drawer/end_drawer.dart';
import '../../utils/responsive_helper.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
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
                vertical: 15,
              ),
              child: Container(
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
                    ? screenSize.height * 1.2
                    : responsiveHelper.isTablet(context)
                    ? screenSize.height * 1.8
                    : screenSize.height * 1.2,
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderWidget(screenSize: screenSize),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: FormFieldsWidget(
                            nameController: _nameController,
                            phoneController: _phoneController,
                            emailController: _emailController,
                            passwordController: _passwordController,
                          ),
                        ),
                        SizedBox(height: responsiveHelper.isDesktop(context) ? 40 : 20),
                        const Divider(
                          thickness: 1,
                          color: Color(0xff9E9C9C),
                         indent: 40,
                          endIndent: 40,
                        ),
                        SizedBox(height: responsiveHelper.isDesktop(context) ? 30 : 15),
                        FooterWidget(formKey: _formKey),
                      ],
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
