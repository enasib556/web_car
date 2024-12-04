import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const
  CustomDropDown({super.key,  this.selectedValue, required this.onChanged, required this.items, required this.hint});
  final String? hint;
  final String? selectedValue;
  final Function(String?) onChanged;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
            width: size.width * 0.12,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: DropdownButton<String>(
              value: selectedValue,
              hint:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                 hint!,
                  style:const  TextStyle(fontSize: 14),
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
                      border: Border.all(
                          color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Text(item),
                  );
                }).toList();
              },
            )
    );
  }
}
