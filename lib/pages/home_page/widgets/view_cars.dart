import 'package:cars_web/core/Theming/font_weights_helper.dart';
import 'package:cars_web/core/widgets/green_button.dart';
import 'package:flutter/material.dart';

import '../../../core/icons/icons.dart';
import '../../../core/images/images.dart';

class ViewCars extends StatelessWidget {
  const ViewCars({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.9,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.5,
          ),
          itemCount: 9,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    ImagesApp.LDV,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2022 LDV D90',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeightHelper.semiBold),
                        ),
                        Text(
                          'Executive Auto 4×4',
                          style: TextStyle(fontWeight: FontWeightHelper.regular),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(IconsApp.heart),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18),
                  child: Text('تسجيل الدخول للحصول على السعر',style: TextStyle(fontWeight: FontWeightHelper.bold,fontSize: 29),),
                ),
                const Divider(thickness: 1),
               const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• SUV', style: TextStyle(fontSize: 16)),
                          Text('• Automatic', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• 4cyl 2.0L T Diesel', style: TextStyle(fontSize: 16)),
                          Text('• 15,513 km', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                ),
              const Divider(thickness: 1,),
              const Text('تاجر يستخدم',style: TextStyle(fontWeight: FontWeightHelper.semiBold,fontSize: 20),),
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const  Icon(Icons.location_on)),
                    Text('VIC',style: TextStyle(fontSize: 16),),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
