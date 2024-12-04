import 'package:cars_web/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../utils/responsive_helper.dart';
import 'featuresTap.dart';
import 'overviewTap.dart';

class VehicleDetailsTabBar extends StatelessWidget {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
  VehicleDetailsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
           TabBar(
            tabs: [
              Tab(text: AppLocalizations.of(context)!.overView!),
              Tab(text: AppLocalizations.of(context)!.features!),
            ],
          ),
          SizedBox(
            height:responsiveHelper.isMobile(context)?850:710,// توزيع المساحة المتاحة بالكامل للـ TabBarView
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(), // تعطيل التمرير
              children: [
                SizedBox( height:500,
                    child: OverviewTab()),
                SizedBox( height:700,
                    child: FeaturesTab()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
