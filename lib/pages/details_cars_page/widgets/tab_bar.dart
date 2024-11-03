import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../utils/responsive_helper.dart';
import 'featuresTap.dart';
import 'overviewTap.dart';

// class VehicleDetailsTabBar extends StatelessWidget {
//   final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
//   final List<Map<String, String>> overview;
//   final List<Map<String, List<Map<String, String>>>> features;
//
//   VehicleDetailsTabBar({
//     super.key,
//     required this.overview,
//     required this.features,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Column(
//         children: [
//           const TabBar(
//             tabs: [
//               Tab(text: 'Overview'),
//               Tab(text: 'Features'),
//             ],
//           ),
//           SizedBox(
//             height: responsiveHelper.isMobile(context) ? 850 : 710, // توزيع المساحة المتاحة بالكامل للـ TabBarView
//             child: TabBarView(
//               physics: const NeverScrollableScrollPhysics(), // تعطيل التمرير
//               children: [
//                 SizedBox(
//                   height: 500,
//                   child: OverviewTab(overview: overview), // تمرير بيانات overview
//                 ),
//                 SizedBox(
//                   height: 700,
//                   child: FeaturesTab(features: features), // تمرير بيانات features إذا كانت موجودة
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class VehicleDetailsTabBar extends StatelessWidget {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
  VehicleDetailsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: 'Overview'),
              Tab(text: 'Features'),
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
