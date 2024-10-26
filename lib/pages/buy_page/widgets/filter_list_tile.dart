
import 'package:flutter/material.dart';
class FilterListTile extends StatelessWidget {
  final String subFilter;

  const FilterListTile({
    super.key,
    required this.subFilter,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(subFilter),
      trailing: const Icon(Icons.arrow_forward_ios,size: 16,),
    );
  }
}