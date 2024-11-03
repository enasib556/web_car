import 'package:flutter/material.dart';
import '../../../core/Theming/font_weights_helper.dart';
import '../../../core/icons/icons.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/bordered_button.dart';
import '../../../core/widgets/green_button.dart';
import '../../../utils/responsive_helper.dart';
import 'package:get_it/get_it.dart';

import '../../details_cars_page/widgets/contact_form.dart';
import '../../../core/widgets/_showAlertDialog.dart'; // Import the CustomAlertDialog widget

class HoverCard extends StatefulWidget {
  final Map<String, String> carData;

  const HoverCard({super.key, required this.carData});

  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          border: Border.all(
            color: isHovered ? Colors.grey : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                widget.carData['image']!,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.carData['name']!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeightHelper.semiBold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              widget.carData['sub title']!,
                              style: const TextStyle(
                                fontWeight: FontWeightHelper.regular,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              IconsApp.heart,
                              width: 24,
                              height: 24,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: Text(
                      'تسجيل الدخول للحصول على السعر',
                      style: TextStyle(fontWeight: FontWeightHelper.bold, fontSize: 20),
                    ),
                  ),
                  const Divider(thickness: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.carData['f1']!, style: const TextStyle(fontSize: 16)),
                          Text(widget.carData['f2']!, style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.carData['f3']!, style: const TextStyle(fontSize: 16)),
                          Text(widget.carData['f4']!, style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  const Divider(thickness: 1),
                  Text(
                    widget.carData['Dealer']!,
                    style: const TextStyle(fontWeight: FontWeightHelper.semiBold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.location_on)),
                      Text(
                        widget.carData['Gps']!,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: BorderedButton(
                          label: 'Contact Seller',
                          onPressed: () {
                            showCustomAlertDialog(
                              context,
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 32.0),
                                child: SizedBox(
                                  width: responsiveHelper.isDesktop(context)?450:responsiveHelper.isTablet(context)?400:250,
                                    child: ContactForm()),
                              ), // Replace this with your form content
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: GreenButton(
                          label: 'View Details',
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.DetailsCarPage);
                          },
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
