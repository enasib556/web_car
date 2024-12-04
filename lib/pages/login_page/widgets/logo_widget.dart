import 'package:flutter/material.dart';
import '../../../core/images/images.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Center(
      child: SizedBox(
        height: screenSize.height * 0.12,
        child: Image.asset(ImagesApp.logo),
      ),
    );
  }
}
