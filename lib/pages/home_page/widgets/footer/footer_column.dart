import 'package:flutter/material.dart';

class FooterColumn extends StatelessWidget {
   const FooterColumn({
    super.key,
    required this.boldText,
    required this.regularTexts,
  });

  final String boldText;
  final List<String> regularTexts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50), // التأثير على جميع محتويات العمود
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // محاذاة المحتويات من اليسار
        children: [
          Text(
            boldText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: regularTexts.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  regularTexts[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
