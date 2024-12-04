import 'package:flutter/material.dart';

class CatgoryCar extends StatelessWidget {
  const CatgoryCar({super.key,required this.image,required this.title});
  final String? image;
  final String? title ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          image!,
          height: 80,
        ),
        Text(
          title!,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        )
      ],
    );
  }
}
