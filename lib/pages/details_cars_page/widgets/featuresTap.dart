import 'package:flutter/material.dart';
import '../../../core/Theming/font_weights_helper.dart';

// class FeaturesTab extends StatelessWidget {
//   final List<Map<String, List<Map<String, String>>>> features;
//
//   const FeaturesTab({super.key, required this.features});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: features.length,
//       itemBuilder: (context, index) {
//         String category = features[index].keys.first;
//         List<Map<String, String>> details = features[index][category]!;
//
//         // دمج القيم المرتبطة بنفس المفتاح
//         Map<String, List<String>> groupedDetails = {};
//         for (var detail in details) {
//           String key = detail.keys.first;
//           String value = detail.values.first;
//           if (groupedDetails.containsKey(key)) {
//             groupedDetails[key]!.add(value);
//           } else {
//             groupedDetails[key] = [value];
//           }
//         }
//
//         return ExpansionTile(
//           title: Text(
//             category,
//             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           children: groupedDetails.entries
//               .map((entry) => Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: Text(
//                     entry.key,
//                     style: const TextStyle(
//                       fontWeight: FontWeightHelper.medium,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 32.0), // Space between key and value
//                 Expanded(
//                   flex: 3,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: entry.value.map((item) {
//                       return Padding(
//                         padding: const EdgeInsets.only(bottom: 8.0),
//                         child: Text(
//                           item,
//                           style: TextStyle(color: Colors.grey[700]),
//                           textAlign: TextAlign.start,
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ],
//             ),
//           ))
//               .toList(),
//         );
//       },
//     );
//   }
// }


class FeaturesTab extends StatelessWidget {
  final List<Map<String, List<Map<String, String>>>> features = [
    {
      'Audio, visual & communication': [
        {'Inputs': 'Aux input USB socket'},
        {'Bluetooth': 'Bluetooth'},
        {'Controls': 'Multi-function control screen - colour'},
        {'Controls': 'Smart device integration - Android Auto'},
        {'Controls': 'Smart device integration - Apple CarPlay'},
        {'Controls': 'Smart device app display/control'},
        {'Controls': 'Speed dependant volume stereo'},
        {'Speakers': '8 speaker stereo'},
        {'Premium': 'Data logging'},
      ]
    },
    {
      'Safety & Security': [
        {'Airbags': 'Driver'},
        {'Airbags': 'Passenger'},
        {'Airbags': 'Head for 1st row seats (front)'},
        {'Airbags': 'Head front centre'},
        {'Airbags': 'Head for 2nd row seats'},
        {'Airbags': 'Side for 1st row occupants (front)'},
        {'Seatbelts': 'Lap/sash for 5 seats'},
        {'Seatbelts': 'Pretensioners 1st row (front)'},
        {'Seatbelts': 'Pretensioners 2nd row (rear outer seats)'},
        {'Seatbelts': 'Warning - seatbelt reminder'},
        {'Emergency': 'Control - crash avoidance with braking (high speed)'},
        {'Emergency': 'Control - crash avoidance with braking (low speed)'},
        {'Emergency': 'Collision mitigation - reversing with braking'},
        {'Emergency': 'Control - pedestrian avoidance with braking'},
        {'Emergency': 'Collision warning - rearward'},
        {'Emergency': 'Brake assist'},
        {'Emergency': 'Brake emergency display - hazard/stoplights'},
        {'Emergency': 'Collision mitigation - post collision steer/brake'},
        {'Emergency': 'Collision mitigation - vulnerable road user'},
        {'Vehicle control': 'ABS (antilock brakes)'},
        {'Vehicle control': 'Traction'},
        {'Vehicle control': 'Electronic stability'},
        {'Vehicle control': 'Corner braking'},
        {'Vehicle control': 'Rollover stability'},
        {'Vehicle control': 'Hill descent'},
        {'Vehicle control': 'Hill holder'},
        {'Vehicle control': 'EBD (electronic brake force distribution)'},
        {'Driver Assistance': 'Lane departure warning'},
        {'Driver Assistance': 'Lane keeping - active assist'},
        {'Driver Assistance': 'Alert/warning - collision forward'},
        {'Driver Assistance': 'Alert/warning - road sign display'},
        {'Driver Assistance': 'Warning - driver fatigue'},
        {'Driver Assistance': 'Driver attention detection'},
        {'Driver Assistance': 'Blind spot with active assist'},
        {'Driver Assistance': 'Park distance - front'},
        {'Driver Assistance': 'Park distance - rear'},
        {'Driver Assistance': 'Camera - front'},
        {'Driver Assistance': 'Camera - rear'},
        {'Driver Assistance': 'Camera - side'},
        {'Security': 'Central locking - remote/keyless'},
        {'Security': 'Engine immobiliser'},
        {'Security': 'Alarm'},
      ]
    },
    {
      'Comfort & convenience': [
        {'Air conditioning': 'Rear'},
        {'Climate': 'Climate control'},
        {'Air quality': 'Pollen filter'},
        {'Driving':'Distance control'},
        {'Driving':'With brake function (limiter)'},
        {'Illumination':'Map/reading lamps - for 1st row'},
        {'Illumination':'Map/reading lamps - for 2nd row'},
        {'Key':'Keyless start - key/fob proximity related'},
        {'Start':'Starter button - key/fob proximity'},
        {'Armrests':'Front centre (shared)'},
        {'Armrests':'Rear centre (shared)'},
        {'Grab handles':'Passengers side'},
        {'Grab handles':'2nd row'},
        {'Sunvisor':'Illuminated vanity mirrors dual'},
        {'Drink holders':'Cup holders - 1st row'},
        {'Drink holders':'Cup holders - 2nd row'},
        {'Cargo space':'Cargo cover'}
      ]
    },
    {
      'Lights & windows': [
        {'Headlights': 'Automatic (light sensitive)'},
        {'Headlights': 'See me home'},
        {'Headlights': 'LED'},
        {'Headlights': 'Electric level adjustment'},
        {'Tail lights':''},
        {'Windows': 'Tinted Windows'},
      ]
    },
    {
      'Interior': [
        {'Leather look': 'Leather look - seats'},
        {'Leather': 'Steering wheel'},
      ]
    },
    {
      'Seating': [
        {'Front row seats': 'Height adjustable driver'},
        {'Front row seats': 'Height adjustable passenger'},
        {'Electric seats': 'Drivers'},
        {'Electric seats': 'Driver with electric lumbar'},
        {'Heated': 'Heated'},
        {'2nd row seats': 'Split fold'},
        {'Headrests': 'Adjustable 1st row (front)'},
        {'Headrests': 'Adjustable 2nd row x3'},
      ]
    },
    {
      'Instruments & controls': [
        {'Display': 'Digital instrument display - full'},
        {'Display': 'Tyre pressure monitoring - with logging/display'},
        {'Speed': 'Speed zone reminder - road sign recognition'},
        {'Speed': 'Speed alert - warning'},
        {'Speed': 'Speed limiter'},
      ]
    },
    {
      'Exterior': [
        {'Wheels': 'Alloy wheels'},
        {'Roof': 'Sunroof'},
      ]
    },
    {
      'Body': [
        {'Roof': 'Roof rails'},
      ]
    },
    {
      'Electrical': [
        {'Power sockets': '12V sockets - auxiliary'},
      ]
    },
    {
      'Transmission & Drivetrain': [
        {'Drive': 'Driving mode - selectable'},
      ]
    },
    {
      'Steering': [
        {'Operation': 'Multi-function steering wheel'},
        {'Power steering': 'Electric assist'},
        {'Steering column': 'Tilt and reach'},
      ]
    },
    {
      'Brakes': [
        {'Front': 'Ventilated'},
        {'Operation': '4 wheel disc brakes'},
        {'Operation': 'Regenerative'},
        {'Park': 'Park brake - electric'},
      ]
    },
    {
      'Wheels & Tyres': [
        {'Front rim': '18" alloy wheels'},
        {'Spare wheel': 'Tyre repair kit'},
      ]
    },
  ];

  FeaturesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: features.length,
      itemBuilder: (context, index) {
        String category = features[index].keys.first;
        List<Map<String, String>> details = features[index][category]!;

        // دمج القيم المرتبطة بنفس المفتاح
        Map<String, List<String>> groupedDetails = {};
        for (var detail in details) {
          String key = detail.keys.first;
          String value = detail.values.first;
          if (groupedDetails.containsKey(key)) {
            groupedDetails[key]!.add(value);
          } else {
            groupedDetails[key] = [value];
          }
        }

        return ExpansionTile(
          title: Text(
            category,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          children: groupedDetails.entries
              .map((entry) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    entry.key,
                    style: const TextStyle(
                      fontWeight: FontWeightHelper.medium,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 32.0), // Space between key and value
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: entry.value.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          item,
                          style: TextStyle(color: Colors.grey[700]),
                          textAlign: TextAlign.start,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ))
              .toList(),
        );
      },
    );
  }
}
