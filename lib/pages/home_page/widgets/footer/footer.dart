import 'package:cars_web/pages/home_page/widgets/footer/footer_column.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
   const Footer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 40,
        shrinkWrap: true,
        children: [
          FooterColumn(boldText: 'التواصل', regularTexts: ['تواصل معنا',' مساعده'],),
          FooterColumn(boldText: 'الشركه', regularTexts: ['معلومات عنا',' وظائف','إعلانات الشركات','إعلانات تاجر','المساهمين','المسابقات','كن تاجرا','خريطة الموقع'],),
          FooterColumn(boldText: 'الأسواق المحلية', regularTexts: ['دراجات','قوارب','الشاحنات','قافلة','الآلات الزراعية','بناء','مبيعات الإطارات']),
          FooterColumn(boldText: 'موافقة', regularTexts: ['خصوصية','الإفصاح المسؤول','الشروط والأحكام']),
          
        ],
      ),

    );
  }
}
