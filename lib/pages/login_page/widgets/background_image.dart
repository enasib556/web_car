import 'package:flutter/material.dart';
import '../../../core/images/images.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Image.asset(
      ImagesApp.background_login1,
      fit: BoxFit.cover,
      width: screenSize.width,
      height: screenSize.height,
    );
  }
}
