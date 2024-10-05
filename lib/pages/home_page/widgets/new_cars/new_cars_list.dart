import 'package:flutter/material.dart';

class NewCarsList extends StatelessWidget {
  const NewCarsList({super.key});

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

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: cars.map((car) {
          return Column(
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
          );
        }).toList(),
      ),
    );
  }
}