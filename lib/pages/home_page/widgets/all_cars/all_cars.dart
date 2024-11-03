import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../../constants.dart';
import '../../../../core/routing/routes.dart';
import '../../../../utils/responsive_helper.dart';

class AllCars extends StatefulWidget {
  const AllCars({super.key});

  @override
  _AllCarsState createState() => _AllCarsState();
}

class _AllCarsState extends State<AllCars> {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;

  final List<Map<String, String>> cars = [
    {
      "name": "Car 1",
      "price": "\$20,000",
      "image":
          "https://editorial.pxcrush.net/carsales/general/editorial/2024-volkswagen-skoda-cupra-europe-021.jpg",
    },
    {
      "name": "Car 2",
      "price": "\$25,000",
      "image":
          "https://editorial.pxcrush.net/carsales/general/editorial/smart-3-feature-001.jpg",
    },
    {
      "name": "Car 3",
      "price": "\$30,000",
      "image":
          "https://editorial.pxcrush.net/carsales/general/editorial/2024-mazda-bt-50-xtr-01.jpg",
    },
    {
      "name": "Car 4",
      "price": "\$35,000",
      "image":
          "https://editorial.pxcrush.net/carsales/general/editorial/smart-3-feature-001.jpg",
    },
    {
      "name": "Car 5",
      "price": "\$40,000",
      "image":
          "https://editorial.pxcrush.net/carsales/general/editorial/2024-mazda-bt-50-xtr-01.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 130,
                child: Text(
                  "جميع السيارات",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              if (responsiveHelper.isDesktop(context))
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: _previousCar,
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward),
                      onPressed: _nextCar,
                    ),
                  ],
                )
              else
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.buyScreen);
                  },
                  child: const Text(
                    "اعرض المزيد",
                    style: TextStyle(
                      fontSize: 16,
                      color: kGreenColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(
          height: responsiveHelper.isDesktop(context)
              ? 350
              : responsiveHelper.isTablet(context)
                  ? 300
                  : 200,
          width: MediaQuery.sizeOf(context).width,
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: cars.length,
            itemBuilder: (context, index) {
              return _buildCarCard(index);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCarCard(int index) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SizedBox(
        width: responsiveHelper.isDesktop(context)
            ? 565
            : responsiveHelper.isTablet(context)
                ? 300
                : 150,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFe5e5e5), width: 1),
          ),
          elevation: 0,
          color: const Color(0xffe5e5e5),
          child: Column(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.network(
                  cars[index]["image"]!,
                  height: responsiveHelper.isDesktop(context)
                      ? 250
                      : responsiveHelper.isTablet(context)
                          ? 200
                          : 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      cars[index]["name"]!,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      cars[index]["price"]!,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _previousCar() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _scrollToCurrentIndex();
    }
  }

  void _nextCar() {
    if (_currentIndex < cars.length - 1) {
      _currentIndex++;
      _scrollToCurrentIndex();
    }
  }

  void _scrollToCurrentIndex() {
    // Scroll the list to the current index
    _scrollController.animateTo(
      _currentIndex *
          (responsiveHelper.isDesktop(context)
              ? 565
              : responsiveHelper.isTablet(context)
                  ? 300
                  : 150),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
