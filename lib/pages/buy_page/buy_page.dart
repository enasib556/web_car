import 'package:cars_web/core/widgets/header.dart';
import 'package:cars_web/pages/buy_page/widgets/SliderFilter.dart';
import 'package:cars_web/pages/home_page/widgets/view_cars.dart';
import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget {
  BuyPage({super.key});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  String? selectedSort; // This will hold the selected value

  @override
  void initState() {
    super.initState();
    selectedSort = 'خصائص'; // Set the default value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            // Header (Assuming you have your header code here)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: SidebarFilter(), // Your SidebarFilter widget
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text('فرز حسب : '),
                            const SizedBox( width: 10,),
                            Container(
                              decoration: BoxDecoration(
                                   // لون البوردر
                                border: Border.all(
                                  width: 2.0,
                                  color: const Color(0xff649637),
                                ),
                                borderRadius: BorderRadius.circular(10), // زاوية البوردر
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
                          ],
                        ),
                      ),
                      ViewCars()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
