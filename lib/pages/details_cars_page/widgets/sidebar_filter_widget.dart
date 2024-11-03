import 'package:flutter/material.dart';

import '../../../utils/responsive_helper.dart';
import '../../buy_page/widgets/SliderFilter.dart';

class SidebarFilterWidget extends StatelessWidget {
  final ResponsiveHelper responsiveHelper;

  const SidebarFilterWidget({required this.responsiveHelper, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsiveHelper.isDesktop(context) ? 250 : responsiveHelper.isTablet(context) ? 235 : null,
      child: SidebarFilter(),
    );
  }
}