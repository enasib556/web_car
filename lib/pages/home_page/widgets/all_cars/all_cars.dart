import 'package:flutter/material.dart';

class AllCars extends StatefulWidget {
  const AllCars({super.key});

  @override
  _AllCarsState createState() => _AllCarsState();
}

class _AllCarsState extends State<AllCars> {
  final PageController _pageController = PageController(viewportFraction: 0.33); // Show 3 items
  int _currentIndex = 0;

  final List<Map<String, String>> cars = [
    {
      "name": "Car 1",
      "price": "\$20,000",
      "image": "https://editorial.pxcrush.net/carsales/general/editorial/2024-volkswagen-skoda-cupra-europe-021.jpg",
    },
    {
      "name": "Car 2",
      "price": "\$25,000",
      "image": "https://editorial.pxcrush.net/carsales/general/editorial/smart-3-feature-001.jpg",
    },
    {
      "name": "Car 3",
      "price": "\$30,000",
      "image": "https://editorial.pxcrush.net/carsales/general/editorial/2024-mazda-bt-50-xtr-01.jpg",
    },
    {
      "name": "Car 4",
      "price": "\$35,000",
      "image": "https://editorial.pxcrush.net/carsales/general/editorial/smart-3-feature-001.jpg",
    },
    {
      "name": "Car 5",
      "price": "\$40,000",
      "image": "https://editorial.pxcrush.net/carsales/general/editorial/2024-mazda-bt-50-xtr-01.jpg",
    },
  ];

  void _previousCar() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _pageController.animateToPage(_currentIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  void _nextCar() {
    if (_currentIndex < cars.length - 1) {
      _currentIndex++;
      _pageController.animateToPage(_currentIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Navigation arrows at top-left
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
          ),
        ),
        // PageView inside an Expanded widget to provide constraints
        SizedBox(
          height: 300,
          child: PageView.builder(
            controller: _pageController,
            itemCount: cars.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: const BorderSide(color: Color(0xFFe5e5e5), width: 1),
                  ),
                  elevation: 0,
                  color: const Color(0xffe5e5e5),
                  child: Column(
                    children: [
                      // Car Image with increased height
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(16),
                        ),
                        child: Image.network(
                          cars[index]["image"]!,
                          height: 180, // Increased height
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Car Name and Price
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
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
