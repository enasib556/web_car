import 'package:flutter/material.dart';
import '../../../core/images/images.dart';
import '../../../utils/responsive_helper.dart';
import 'package:get_it/get_it.dart';

class CarImages extends StatelessWidget {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
  CarImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start, // تأكد من محاذاة العناصر في الأعلى
      children: [
        Expanded(
          flex: responsiveHelper.isDesktop(context)?90:responsiveHelper.isTablet(context)?50:40,
          child: Image.asset(
            ImagesApp.GMW,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: responsiveHelper.isDesktop(context)?8:8),
        Expanded(
          flex: responsiveHelper.isDesktop(context)?28:responsiveHelper.isTablet(context)?16:12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(ImagesApp.GMW1,),// height: responsiveHelper.isMobile(context)?55:150,
              //width: responsiveHelper.isMobile(context)?130: 220),
              const SizedBox(height: 8),
              Image.asset(ImagesApp.GMW2,),
              const  SizedBox(height: 8), // تقليل المسافة بين الصور
              Image.asset(ImagesApp.GMW3,),
            ],
          ),
        ),
      ],
    );
  }
}
