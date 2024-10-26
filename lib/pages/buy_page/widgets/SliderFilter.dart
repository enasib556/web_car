import 'package:cars_web/pages/buy_page/widgets/FilterCategory.dart';
import 'package:flutter/material.dart';

class SidebarFilter extends StatelessWidget {
  final List<Map<String, dynamic>> filters = [
    {
      'title': 'الأكثر شعبية',
      'icon': Icons.whatshot,
      'subFilters': [
        'النوع',
        'الموقع',
        'السنة',
        'السعر',
        'عداد المسافات',
        'ناقل الحركة',
        'نوع الهيكل',
        'جديد / مستعمل',
        'وقود / كهربائي',
        'الكلمة المفتاحية'
      ],
    },
    {'title': 'المحرك', 'icon': Icons.engineering,
      'subFilters': [
        'نوع محرك الاقراص',
        'الاقتصاد في استهلاك الوقود',
        'اسطونات',
        'الحث والتربو',
        'حجم المحرك',
        'حالة معتمده للوجه p',
        'وصف المحرك',
        'سحب(المكابح)',
        'القدره علي الوزن'
       ]
    },
    {'title': 'تفاصيل البائع', 'icon': Icons.person,
      'subFilters': [
        'تاجر/خاص',
        'تمويل'
      ]},
    {'title': 'الأسلوب', 'icon': Icons.directions_car, 'subFilters':
    [
      'نمط الحياة',
      'لون',
      'مقاعد',
      'أبواب'
    ]},
    {'title': 'المزايا', 'icon': Icons.featured_play_list, 'subFilters':
    ['تصنيف السلامة ANCAP',
      'المميزات من الألف إلى الياء',
    ]},
    {'title': 'حالة السيارة', 'icon': Icons.check_box, 'subFilters':
    ['معتمد / تم فحصه',
      'عرض السيارات التي تحتوي فقط على'
    ]},
    {'title': 'كهربائي', 'icon': Icons.electric_bolt, 'subFilters': [
      'يتراوح',
      'سعة البطارية',
      'نوع القابس'
    ]},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            title: Text('التصفية', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text('مسح الكل', style: TextStyle(color: Colors.grey)),
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
