
import 'package:cars_web/pages/details_cars_page/widgets/car_datails_section.dart';
import 'package:cars_web/pages/details_cars_page/widgets/contact_formSection.dart';
import 'package:cars_web/pages/details_cars_page/widgets/sidebar_filter_widget.dart';
import 'package:cars_web/pages/home_page/widgets/footer/footer.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/end_drawer.dart';
import '../../core/widgets/header.dart';
import '../../utils/responsive_helper.dart';
import 'package:get_it/get_it.dart';

class DetailsCarPage extends StatelessWidget {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();

  DetailsCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyEndDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: responsiveHelper.isDesktop(context)
                  ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SidebarFilterWidget(responsiveHelper: responsiveHelper),
                  const SizedBox(width: 20),
                  Expanded(child: CarDetailsSection()),
                  const SizedBox(width: 20),
                  ContactFormSection(),
                ],
              )
                  :Column(
                children: [
                  // CarImages(),
                  const SizedBox(height: 30),
                  CarDetailsSection(),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: ContactFormSection(),
                  ),
                ],
              ),
            ),
            if (responsiveHelper.isDesktop(context))const Footer(),
          ],
        ),
      ),
    );
  }
}