import 'package:flutter/material.dart';

class Subdropdown extends StatelessWidget {
  const Subdropdown({super.key, required this.selectedValue,required this.hint, required this.onChanged, required this.items});
  final String? selectedValue;
  final String? hint;
  final Function(String?) onChanged;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: size.width * 0.08,
        child: DropdownButton<String>(
          value: selectedValue,
          hint:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              hint!,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          style: const TextStyle(color: Colors.black),
          underline: const SizedBox(),
          // Removes the underline
          dropdownColor: Colors.white,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: 8,
          isExpanded: true,
          selectedItemBuilder: (BuildContext context) {
            return items.map<Widget>((String item) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(12),
                child: Text(item),
              );
            }).toList();
          },
        ),
      ),
    );
  }
}
