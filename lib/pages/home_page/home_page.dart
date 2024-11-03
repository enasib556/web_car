import 'package:cars_web/pages/home_page/widgets/footer/footer.dart';
import 'package:cars_web/pages/home_page/widgets/home_body.dart';
import 'package:cars_web/pages/home_page/widgets/phone_header.dart';
import 'package:cars_web/pages/home_page/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:cars_web/core/widgets/end_drawer.dart';
import '../../utils/responsive_helper.dart';
import '../../core/widgets/header.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: const MyEndDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: responsiveHelper.isDesktop(context) ? 800 : 500,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                     const Header(),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                'images/homepage.jpg',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 360,
                              ),
                              Container(
                                width: double.infinity,
                                height: 360,
                                color: Colors.black.withOpacity(
                                    0.3), // Adjust opacity as needed
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  if (responsiveHelper.isDesktop(context))
                    Positioned(
                      top: 360,
                      left: size.width * 0.1,
                      right: size.width * 0.1,
                      child: const SearchWidget(),
                    )
                  else
                    const Positioned(
                      top: 200,
                      child: PhoneHeader(),
                    ),
                ],
              ),
            ),
            Container(
              padding: !responsiveHelper.isMobile(context) ? EdgeInsets.symmetric(horizontal: size.width * 0.1,) : null,
              child:  HomeBody(),
            ),
           const  SizedBox(height: 30,),
            if (responsiveHelper.isDesktop(context)) const Footer()
          ],
        ),
      ),
    );
  }
}
