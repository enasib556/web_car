import 'package:cars_web/core/widgets/header.dart';
import 'package:cars_web/pages/Sell_page/widgets/OdometerReading.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_location_input.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_make_selection.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_model_selection.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_price_selection.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_type_selection.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_year_selection.dart';
import 'package:flutter/material.dart';
import '../../core/routing/routes.dart';
import '../../core/widgets/end_drawer.dart';

class SellPage extends StatefulWidget {
  const SellPage({super.key});

  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController odometerController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  String? selectedCarMake;
  String? selectedCarModel;
  String? selectedCarYear;
  String? selectedCarType;
  String odometerReading = '';
  String carLocation = '';
  final Map<String, List<String>> carModels = {
    'Mazda': ['CX-5', 'Mazda3', 'MX-5'],
    'Ford': ['F-150', 'Mustang', 'Explorer'],
    'BMW': ['X5', '320i', 'M3'],
    'Toyota': ['Corolla', 'Camry', 'Land Cruiser'],
    'Honda': ['Civic', 'Accord', 'CR-V'],
  };

  final Map<String, List<String>> modelYears = {
    'CX-5': ['2019', '2020', '2021', '2022'],
    'Mazda3': ['2018', '2019', '2020'],
    'MX-5': ['2017', '2018', '2019'],
    'F-150': ['2020', '2021', '2022'],
    'Mustang': ['2019', '2020', '2021'],
    'Explorer': ['2018', '2019', '2020'],
    'X5': ['2021', '2022', '2023'],
    '320i': ['2020', '2021'],
    'M3': ['2022', '2023', '2024'],
    'Corolla': ['2019', '2020', '2021'],
    'Camry': ['2020', '2021', '2022'],
    'Land Cruiser': ['2021', '2022', '2023'],
    'Civic': ['2020', '2021'],
    'Accord': ['2019', '2020', '2021'],
    'CR-V': ['2018', '2019', '2020'],
  };

  List<String> availableYears = [];

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _resetCarSelection() {
    setState(() {
      selectedCarMake = null;
      selectedCarModel = null;
      selectedCarType = null;
      selectedCarYear = null;
      odometerReading = '';
      carLocation = '';
      locationController.clear();
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SellPage()),
    );
  }

  void _scrollToModelSection() {
    if (selectedCarMake != null) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a car make first')),
      );
    }
  }

  void _scrollToYearSection() {
    if (selectedCarModel != null) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a car model first')),
      );
    }
  }

  void _scrollToTypeSection() {
    if (selectedCarYear != null) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 1000,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a car year first')),
      );
    }
  }

  void _scrollToOdometerReading() {
    if (selectedCarType != null) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 1000,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select a car type')),
      );
    }
  }

  void _scrollToLocationCarSell() {
    if (odometerReading.trim().isNotEmpty) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 1000,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter the odometer reading')),
      );
    }
  }
  void _scrollToCarPriceSelection() {
    if (carLocation.trim().isNotEmpty) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent + 1000,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter the car Location')),
      );
    }
  }




  void _goBackToCarLocation() {
    odometerController.clear();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent - 750,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  void _goBackToOdometerReading() {
    odometerController.clear();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent - 750,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  void _goBackToTypeSelection() {
    setState(() {
      selectedCarType = null;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent - 750,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  void _goBackToYearSelection() {
    setState(() {
      selectedCarType = null;
      selectedCarYear = null;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  void _goBackToModelSelection() {
    setState(() {
      selectedCarModel = null;
      selectedCarYear = null;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  void _goBackToMakeSelection() {
    setState(() {
      selectedCarMake = null;
      selectedCarModel = null;
      selectedCarYear = null;
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        0.0,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      endDrawer: const MyEndDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            const SizedBox(height: 160),
            CarMakeSelection(
              selectedCarMake: selectedCarMake,
              onCarMakeChanged: (newValue) {
                setState(() {
                  selectedCarMake = newValue;
                });
              },
              onNextPressed: _scrollToModelSection,
            ),
            CarModelSelection(
              selectedCarMake: selectedCarMake,
              selectedCarModel: selectedCarModel,
              carModels:
              selectedCarMake != null ? carModels[selectedCarMake]! : [],
              availableYears: availableYears,
              onCarModelChanged: (newValue) {
                setState(() {
                  selectedCarModel = newValue;
                  availableYears = modelYears[newValue!] ?? [];
                });
              },
              onBackPressed: _goBackToMakeSelection,
              onNextPressed: _scrollToYearSection,
            ),
            if (selectedCarModel != null)
              CarYearSelection(
                selectedCarMake: selectedCarMake,
                selectedCarModel: selectedCarModel,
                availableYears: availableYears,
                selectedCarYear: selectedCarYear,
                onYearChanged: (newValue) {
                  setState(() {
                    selectedCarYear = newValue;
                  });
                },
                onBackPressed: _goBackToModelSelection,
                onNextPressed: _scrollToTypeSection,
              ),
            if (selectedCarYear != null)
              CarTypeSelection(
                selectedCarMake: selectedCarMake,
                selectedCarModel: selectedCarModel,
                selectedCarYear: selectedCarYear,
                selectedCarType: selectedCarType,
                onTypeChanged: (newValue) {
                  setState(() {
                    selectedCarType = newValue;
                  });
                },
                onBackPressed: _goBackToYearSelection,
                onNextPressed: _scrollToOdometerReading,
              ),
            if (selectedCarType != null)
              OdometerReading(
                selectedCarMake: selectedCarMake,
                selectedCarModel: selectedCarModel,
                selectedCarYear: selectedCarYear,
                odometerReading: odometerReading,
                onOdometerChanged: (newValue) {
                  setState(() {
                    odometerReading = newValue;
                  });
                },
                onBackPressed: _goBackToTypeSelection,
                onNextPressed: _scrollToLocationCarSell,
                odometerController: odometerController,
              ),
            if (odometerReading.trim().isNotEmpty)
              CarLocationInput(
                locationController: locationController,
                onBackPressed: _goBackToOdometerReading,
                selectedCarModel: selectedCarModel ?? '',
                selectedCarType: selectedCarType ?? '',
                selectedCarYear: selectedCarYear ?? '',
                odometerReading: odometerReading,
                onCarChangePressed: _resetCarSelection,
                onNextPressed: _scrollToCarPriceSelection,
                selectedCarMake: selectedCarMake ?? '',
                onLocationChanged: (newValue) {
                  setState(() {
                    carLocation = newValue;
                  });
                },
              ),
            if (carLocation.trim().isNotEmpty)
              CarPriceSelection(
                selectedCarMake: selectedCarMake ?? '',
                selectedCarModel: selectedCarModel ?? '',
                selectedCarType: selectedCarType ?? '',
                selectedCarYear: selectedCarYear ?? '',
                odometerReading: odometerReading,
                onCarChangePressed: _resetCarSelection,
                onBackPressed: _goBackToCarLocation,
                  onSellPressed: () {
                    Navigator.pushNamed(context, Routes.buyScreen,);
                  },
                carLocationInput: carLocation,
                priceController: priceController,
                onPriceChanged:  (newValue) {}
              )
          ],
        ),
      ),
    );
  }
}
