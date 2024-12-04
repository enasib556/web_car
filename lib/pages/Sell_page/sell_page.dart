import 'package:cars_web/core/widgets/header.dart';
import 'package:cars_web/pages/Sell_page/widgets/OdometerReading.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_location_input.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_make_selection.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_model_selection.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_price_selection.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_type_selection.dart';
import 'package:cars_web/pages/Sell_page/widgets/car_year_selection.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../core/routing/routes.dart';
import '../../core/widgets/end_drawer/end_drawer.dart';
import '../../utils/responsive_helper.dart';
import 'package:get_it/get_it.dart';

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
  final responsiveHelper = GetIt.instance<ResponsiveHelper>();
  String? selectedCarMake;
  String? selectedCarModel;
  String? selectedCarYear;
  String? selectedCarType;
  String odometerReading = '';
  String carLocation = '';
  List<XFile> carImages = [];
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

  void _scrollToModelAndYear() {
    if (selectedCarMake != null) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select first')),
      );
    }
  }

  void _scrollToTypeAndOdometerAndLocationAndPriceSection() {
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

  void _goBackTo(VoidCallback updateStateCallback, double positionOffset) {
    setState(() {
      updateStateCallback();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        positionOffset >= 0 ? positionOffset : 0, // التأكد من أن الموضع ليس أقل من 0
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      endDrawer:  const MyEndDrawer(),
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
              onNextPressed: _scrollToModelAndYear,
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
              onBackPressed:(){
                _goBackTo(() {
                  selectedCarMake = null;
              }, 0.0);
              },
              onNextPressed: _scrollToModelAndYear,
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
                onBackPressed: () {
                  _goBackTo(() {
                    selectedCarModel = null;
                  },responsiveHelper.isDesktop(context)?_scrollController.position.maxScrollExtent-750:_scrollController.position.maxScrollExtent-500); // تعديل موضع الرجوع للأعلى
                },
                onNextPressed:  _scrollToTypeAndOdometerAndLocationAndPriceSection,
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
                onBackPressed: (){
                  _goBackTo(() {
                    selectedCarYear = null;
                  }, _scrollController.position.maxScrollExtent);
                },
                onNextPressed:  _scrollToTypeAndOdometerAndLocationAndPriceSection,
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
                onBackPressed: (){
                  _goBackTo(() {
                    selectedCarType = null;
                    odometerReading = '';
                    odometerController.clear();
                  },responsiveHelper.isDesktop(context)?_scrollController.position.maxScrollExtent-750:_scrollController.position.maxScrollExtent-650);
                },
                onNextPressed:  _scrollToTypeAndOdometerAndLocationAndPriceSection,
                odometerController: odometerController,
              ),
            if (odometerReading.trim().isNotEmpty)
              CarLocationInput(
                locationController: locationController,
                onBackPressed: (){
                  _goBackTo(() {
                    odometerReading = '';
                    carLocation = '';
                    locationController.clear();
                    odometerController.clear();
                  }, responsiveHelper.isDesktop(context)?_scrollController.position.maxScrollExtent-750:_scrollController.position.maxScrollExtent-650);
                },
                selectedCarModel: selectedCarModel ?? '',
                selectedCarType: selectedCarType ?? '',
                selectedCarYear: selectedCarYear ?? '',
                odometerReading: odometerReading,
                onCarChangePressed: _resetCarSelection,
                onNextPressed:  _scrollToTypeAndOdometerAndLocationAndPriceSection,
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
                  onBackPressed:  (){
                    _goBackTo(() {
                      carLocation = '';
                      locationController.clear();
                    },  responsiveHelper.isDesktop(context)?_scrollController.position.maxScrollExtent-750:_scrollController.position.maxScrollExtent-650);
                  },
                  onSellPressed: () {
                    Navigator.pushNamed(context, Routes.buyScreen,);
                  },
                  carLocationInput: carLocation,
                  priceController: priceController,
                  onPriceChanged:  (newValue) {}
              ),
          ],
        ),
      ),
    );
  }
}