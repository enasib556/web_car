import 'package:cars_web/pages/buy_page/widgets/filter_list_tile.dart';
import 'package:flutter/material.dart';

class FilterCategory extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<String> subFilters;

  const FilterCategory({
    Key? key,
    required this.title,
    required this.icon,
    required this.subFilters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      leading: Icon(icon, color: const Color(0xff649637)),
      children: subFilters.map((subFilter) {
        return FilterListTile(subFilter: subFilter);
      }).toList(),
    );
  }
}
