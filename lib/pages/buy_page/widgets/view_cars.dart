import 'package:cars_web/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import '../../../core/images/images.dart';
import 'hovercard.dart';
import 'package:get_it/get_it.dart';
class ViewCars extends StatelessWidget {
  final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
   ViewCars({super.key});
  final List<Map<String, String>> cars =[
    {
      'image':ImagesApp.GMW,
      'name' :'2023 GWM Haval H6',
      'sub title':'Lux Hybrid Auto F',
      'f1':'• Suv',
      'f2':'• Automatic',
      'f3':'• 4cyl 1.5L T Hybrid',
      'f4':'• 6 Km',
      'Dealer':'Dealer Demo',
      'Gps':'QLD'
    },
    {
      'image':ImagesApp.LDV,
      'name' :'2022 LDV D90',
      'sub title':'Executive Auto 4×4',
      'f1':'• Suv',
      'f2':'• Automatic',
      'f3':'• 4cyl 2.0L T Diesel',
      'f4':'• 15,513 km Km',
      'Dealer':'Dealer Used',
      'Gps':'VIC',
    },
    {
      'image':ImagesApp.Range_Rover,
      'name' :'2017 Land Rover Range Rover Velar',
      'sub title':'D240 R-Dynamic Auto AWD MY18',
      'f1':'• Suv',
      'f2':'• Automatic',
      'f3':'• 4cyl 2.0L T Diesel',
      'f4':'• 106,500 Km',
      'Dealer':'Dealer Used',
      'Gps':'QLD'
    },
    {
      'image':ImagesApp.BMW_x3,
      'name' :'2024 BMW X3',
      'sub title':'XDrive30d Auto 4×4',
      'f1':'• Suv',
      'f2':'• Automatic',
      'f3':'• 4cyl 2.0L T Diesel',
      'f4':'• 3,391 Km',
      'Dealer':'Dealer Demo',
      'Gps':'NSW'
    },
    {
      'image':ImagesApp.MG_HS,
      'name' :'2022 MG HS',
      'sub title':'Essence Auto FWD MY22',
      'f1':'• Suv',
      'f2':'• Automatic',
      'f3':'• 4cyl 1.5L T Petrol',
      'f4':'• 61,679 km Km',
      'Dealer':'Dealer Used',
      'Gps':'NSW',
    },
    {
      'image':ImagesApp.Mercedes_C_Class,
      'name' :'2012 Mercedes-Benz C_Class',
      'sub title':'C250 CDI BlueEFFICIENCY Avantgarde Auto R MY12',
      'f1':'• Sedan',
      'f2':'• Automatic',
      'f3':'• 4cyl 2.1L T Diesel',
      'f4':'• 179,000 km Km',
      'Dealer':'Private',
      'Gps':'SA',
    },
    {
      'image':ImagesApp.Hyundai_Snata,
      'name' :'2019 Hyundai Santa Fe',
      'sub title':'Highlander Auto 4x4 MY19',
      'f1':'• Suv',
      'f2':'• Automatic',
      'f3':'• 4cyl 2.2L T Diesel',
      'f4':'• 17,081 km Km',
      'Dealer':'Dealer Used',
      'Gps':'NSW',
    },
    {
      'image':ImagesApp.Kia_Sorent,
      'name' :'2024 Kia Sorento ',
      'sub title':'GT-Line Auto AWD MY24',
      'f1':'• Suv',
      'f2':'• Automatic',
      'f3':'• 4cyl 2.2L T Diesel',
      'f4':'• 3,471 km Km',
      'Dealer':'Dealer Demo',
      'Gps':'VIC',
    },
    {
      'image':ImagesApp.Audi_A3,
      'name' :'2023 Audi A3',
      'sub title':' 35 TFSI Auto MY24',
      'f1':'• Hatch',
      'f2':'• Automatic',
      'f3':'• 4cyl 1.5L T Petrol',
      'f4':'• 1.000 Km',
      'Dealer':'Dealer Demo',
      'Gps':'SA',
    },
    {
      'image':ImagesApp.BMW_Series1,
      'name' :'2021 BMW 1 Series',
      'sub title':'128ti Auto F',
      'f1':'• Hatch',
      'f2':'• Automatic',
      'f3':'• 4cyl 2.0L T Petrol',
      'f4':'• 35,168 Km',
      'Dealer':'Dealer Used',
      'Gps':'QlD',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        child: GridView.builder(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: responsiveHelper.isDesktop(context)?3:1,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 25.0,
            childAspectRatio: responsiveHelper.isDesktop(context)?0.618:responsiveHelper.isTablet(context)?0.73:0.555,
          ),
          itemCount: cars.length,
          itemBuilder: (context, index) {
            return  HoverCard(carData: cars[index]);
          },
        ),
      ),
    );
  }
}

