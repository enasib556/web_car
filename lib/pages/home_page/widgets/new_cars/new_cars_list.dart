import 'package:cars_web/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class NewCarsList extends StatelessWidget {
   NewCarsList({super.key});
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
  @override
  Widget build(BuildContext context) {
    // Sample car data
    final List<Map<String, String>> cars = [
      {
        'name': 'Tesla Model S',
        'price': '\$79,990',
        'imageUrl': 'https://carsales.pxcrush.net/car/cil/eg1zrxxju7m84q9uh7xi6d528.jpg',
      },
      {
        'name': 'BMW i8',
        'price': '\$147,500',
        'imageUrl': 'https://carsales.pxcrush.net/car/cil/z354khdlzs2ogmse73e2f4pu1.jpg',
      },
      {
        'name': 'Audi R8',
        'price': '\$142,700',
        'imageUrl': 'https://carsales.pxcrush.net/car/cil/bxlglk3etfxboaz7g8q8vyrtc.jpg',
      },
      {
        'name': 'Mercedes AMG',
        'price': '\$118,600',
        'imageUrl': 'https://editorial.pxcrush.net/carsales/general/editorial/hyundai-tucson-elite-01-9gex.jpg',
      },
      {
        'name': 'Porsche 911',
        'price': '\$99,200',
        'imageUrl': 'https://carsales.pxcrush.net/car/cil/dvaynxbvo13vedi65aw7nzj83.jpg',
      },
    ];
    if(responsiveHelper.isDesktop(context))
      {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: cars.map((car) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      // Car image with border radius
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(
                          car['imageUrl']!,
                          width: 190,
                          height: 126,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Car name and price
                      Text(
                        car['name']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        car['price']!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        );
      }
    else {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: cars.map((car) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    // Car image with border radius
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        car['imageUrl']!,
                        width: 100,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Car name and price
                    Text(
                      car['name']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      car['price']!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      );
    }
  }
}
