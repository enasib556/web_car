import 'package:flutter/material.dart';
import 'package:cars_web/pages/login_page/widgets/background_image.dart';
import 'package:cars_web/pages/login_page/widgets/login_form.dart';
import '../../core/widgets/end_drawer/end_drawer.dart';
import '../../utils/responsive_helper.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsiveHelper = GetIt.instance<ResponsiveHelper>();
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: const MyEndDrawer(),
      body: Stack(
        children: [
          const BackgroundImage(),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: responsiveHelper.isDesktop(context) ? 150 : 20,
              ),
              child: const SingleChildScrollView(
                child: LoginForm(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
