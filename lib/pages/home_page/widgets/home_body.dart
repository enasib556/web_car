import 'package:cars_web/core/widgets/bordered_button.dart';
import 'package:cars_web/pages/home_page/widgets/all_cars/all_cars.dart';
import 'package:cars_web/pages/home_page/widgets/new_cars/new_cars_list.dart';
import 'package:flutter/cupertino.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "السيارات الجديدة",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
              border: Border.all(color:const Color(0xFFe5e5e5), width: 1),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFE5FFE5),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: const Center(
                  child: Icon(CupertinoIcons.car),
                ),
              ),
              const SizedBox(height: 10,),
              Text('هل تبحث عن سيارة جديدة؟', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              const SizedBox(height: 30,),
              NewCarsList(),
              const SizedBox(height: 30,),
              BorderedButton(label: 'اكتشف المزيد من السيارات', onPressed: (){})
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "جميع السيارات",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const AllCars()
      ],
    );
  }
}
