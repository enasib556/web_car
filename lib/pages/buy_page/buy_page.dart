import 'package:cars_web/core/widgets/header.dart';
import 'package:cars_web/pages/buy_page/widgets/SliderFilter.dart';
import 'package:cars_web/pages/buy_page/widgets/view_cars.dart';
import 'package:cars_web/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../core/widgets/end_drawer.dart';
import '../home_page/widgets/footer/footer.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({super.key});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
  String? selectedSort; // This will hold the selected value

  @override
  void initState() {
    super.initState();
    selectedSort = 'خصائص'; // Set the default value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyEndDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Check if the device is not mobile to show SidebarFilter
                if (!responsiveHelper.isMobile(context))
                  SizedBox(
                    width: responsiveHelper.isDesktop(context) ? 250 : responsiveHelper.isTablet(context) ? 235 : null,
                    child: SidebarFilter(), // SidebarFilter widget for larger screens
                  ),
                if (!responsiveHelper.isMobile(context)) const SizedBox(width: 20), // Add spacing only when SidebarFilter is present
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text('فرز حسب : '),
                            const SizedBox(width: 10),
                            SizedBox(
                              width: 174.2,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.0,
                                    color: const Color(0xff649637),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: DropdownButton<String>(
                                  value: selectedSort,
                                  dropdownColor: Colors.white,
                                  items: const [
                                    DropdownMenuItem(value: 'خصائص', child: Text('خصائص')),
                                    DropdownMenuItem(value: 'السعر: من أعلى إلى أقل', child: Text('السعر: من أعلى إلى أقل')),
                                    DropdownMenuItem(value: 'السعر: من أقل إلى أعلى', child: Text('السعر: من أقل إلى أعلى')),
                                    DropdownMenuItem(value: 'كيلومتر: من أعلى إلى أقل', child: Text('كيلومتر: من أعلى إلى أقل')),
                                    DropdownMenuItem(value: 'كيلومتر: من أقل إلى أعلى', child: Text('كيلومتر: من أقل إلى أعلى')),
                                    DropdownMenuItem(value: 'السنة: من أعلى إلى أقل', child: Text('السنة: من أعلى إلى أقل')),
                                    DropdownMenuItem(value: 'السنة: من أقل إلى أعلى', child: Text('السنة: من أقل إلى أعلى')),
                                  ],
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedSort = newValue; // Update the selected value
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      ViewCars(),

                    ],
                  ),
                ),
              ],
            ),
            if (responsiveHelper.isDesktop(context)) const Footer()
          ],
        ),
      ),
    );
  }
}
