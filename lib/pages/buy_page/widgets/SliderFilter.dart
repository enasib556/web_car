import 'package:cars_web/l10n/app_localizations.dart';
import 'package:cars_web/pages/buy_page/widgets/FilterCategory.dart';
import 'package:flutter/material.dart';

class SidebarFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppLocalizations localization = AppLocalizations.of(context)!;

    final List<Map<String, dynamic>> filters = [
      {
        'title': localization.popular!,
        'icon': Icons.whatshot,
        'subFilters': [
          localization.listPopular![0],
          localization.listPopular![1],
          localization.listPopular![2],
          localization.listPopular![3],
          localization.listPopular![4],
          localization.listPopular![5],
          localization.listPopular![6],
          localization.listPopular![7],
          localization.listPopular![8],
        ],
      },
      {
        'title': localization.engine!,
        'icon': Icons.engineering,
        'subFilters': [
          localization.listEngine![0],
          localization.listEngine![1],
          localization.listEngine![2],
          localization.listEngine![3],
          localization.listEngine![4],
          localization.listEngine![5],
          localization.listEngine![6],
          localization.listEngine![7],
          localization.listEngine![8],
        ],
      },
      {
        'title': localization.sellerDetails!,
        'icon': Icons.person,
        'subFilters': [
          localization.listSellerDetails![0],
          localization.listSellerDetails![1],
        ],
      },
      {
        'title': localization.style!,
        'icon': Icons.directions_car,
        'subFilters': [
          localization.listStyle![0],
          localization.listStyle![1],
          localization.listStyle![2],
          localization.listStyle![3],
        ],
      },
      {
        'title':localization.features!,
        'icon': Icons.featured_play_list,
        'subFilters': [
          localization.listFeatures![0],
          localization.listFeatures![1],
        ],
      },
      {
        'title': localization.carCondition!,
        'icon': Icons.check_box,
        'subFilters': [
          localization.listCarCondition![0],
          localization.listCarCondition![1],
        ],
      },
      {
        'title': localization.electric,
        'icon': Icons.electric_bolt,
        'subFilters': [
          localization.listElectric![0],
          localization.listElectric![1],
          localization.listElectric![2],
        ],
      },
    ];

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(localization.theLiquidation!, style: const TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text(localization.deleteAll!, style: const TextStyle(color: Colors.grey)),
          ),
          const Divider(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: filters.length,
            itemBuilder: (context, index) {
              final filter = filters[index];
              return FilterCategory(
                title: filter['title'],
                icon: filter['icon'],
                subFilters: filter['subFilters'],
              );
            },
          ),
        ],
      ),
    );
  }
}
