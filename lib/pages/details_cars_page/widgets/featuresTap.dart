import 'package:cars_web/core/models/car_feature.dart';
import 'package:cars_web/core/models/feature_item.dart';
import 'package:flutter/material.dart';

import '../../../core/Theming/font_weights_helper.dart';

class FeaturesTab extends StatelessWidget {
  FeaturesTab({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<Map<String, List<Map<String, String>>>> features = [
    //   {
    //     AppLocalizations.of(context)!.audio_visual_communication!: [
    //       {AppLocalizations.of(context)!.inputs!: 'Aux input USB socket'},
    //       {AppLocalizations.of(context)!.bluetooth!: 'Bluetooth'},
    //       {AppLocalizations.of(context)!.controls!: 'Multi-function control screen - colour'},
    //       {AppLocalizations.of(context)!.controls!: 'Smart device integration - Android Auto'},
    //       {AppLocalizations.of(context)!.controls!: 'Smart device integration - Apple CarPlay'},
    //       {AppLocalizations.of(context)!.controls!: 'Smart device app display/control'},
    //       {AppLocalizations.of(context)!.controls!: 'Speed dependant volume stereo'},
    //       {AppLocalizations.of(context)!.speakers!: '8 speaker stereo'},
    //       {AppLocalizations.of(context)!.premium!: 'Data logging'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.safety_security!: [
    //       {AppLocalizations.of(context)!.airbags!: 'Driver'},
    //       {AppLocalizations.of(context)!.airbags!: 'Passenger'},
    //       {AppLocalizations.of(context)!.airbags!: 'Head for 1st row seats (front)'},
    //       {AppLocalizations.of(context)!.airbags!: 'Head front centre'},
    //       {AppLocalizations.of(context)!.airbags!: 'Head for 2nd row seats'},
    //       {AppLocalizations.of(context)!.airbags!: 'Side for 1st row occupants (front)'},
    //       {AppLocalizations.of(context)!.seatbelts!: 'Lap/sash for 5 seats'},
    //       {AppLocalizations.of(context)!.seatbelts!: 'Pretensioners 1st row (front)'},
    //       {AppLocalizations.of(context)!.seatbelts!: 'Pretensioners 2nd row (rear outer seats)'},
    //       {AppLocalizations.of(context)!.seatbelts!: 'Warning - seatbelt reminder'},
    //       {AppLocalizations.of(context)!.emergency!: 'Control - crash avoidance with braking (high speed)'},
    //       {AppLocalizations.of(context)!.emergency!: 'Control - crash avoidance with braking (low speed)'},
    //       {AppLocalizations.of(context)!.emergency!: 'Collision mitigation - reversing with braking'},
    //       {AppLocalizations.of(context)!.emergency!: 'Control - pedestrian avoidance with braking'},
    //       {AppLocalizations.of(context)!.emergency!: 'Collision warning - rearward'},
    //       {AppLocalizations.of(context)!.emergency!: 'Brake assist'},
    //       {AppLocalizations.of(context)!.emergency!: 'Brake emergency display - hazard/stoplights'},
    //       {AppLocalizations.of(context)!.emergency!: 'Collision mitigation - post collision steer/brake'},
    //       {AppLocalizations.of(context)!.emergency!: 'Collision mitigation - vulnerable road user'},
    //       {AppLocalizations.of(context)!.vehicleControl!: 'ABS (antilock brakes)'},
    //       {AppLocalizations.of(context)!.vehicleControl!: 'Traction'},
    //       {AppLocalizations.of(context)!.vehicleControl!: 'Electronic stability'},
    //       {AppLocalizations.of(context)!.vehicleControl!: 'Corner braking'},
    //       {AppLocalizations.of(context)!.vehicleControl!: 'Rollover stability'},
    //       {AppLocalizations.of(context)!.vehicleControl!: 'Hill descent'},
    //       {AppLocalizations.of(context)!.vehicleControl!: 'Hill holder'},
    //       {AppLocalizations.of(context)!.vehicleControl!: 'EBD (electronic brake force distribution)'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Lane departure warning'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Lane keeping - active assist'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Alert/warning - collision forward'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Alert/warning - road sign display'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Warning - driver fatigue'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Driver attention detection'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Blind spot with active assist'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Park distance - front'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Park distance - rear'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Camera - front'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Camera - rear'},
    //       {AppLocalizations.of(context)!.driverAssistance!: 'Camera - side'},
    //       {AppLocalizations.of(context)!.security!: 'Central locking - remote/keyless'},
    //       {AppLocalizations.of(context)!.security!: 'Engine immobiliser'},
    //       {AppLocalizations.of(context)!.security!: 'Alarm'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.comfort_convenience!: [
    //       {AppLocalizations.of(context)!.airConditioning!: 'Rear'},
    //       {AppLocalizations.of(context)!.climate!: 'Climate control'},
    //       {AppLocalizations.of(context)!.airQuality!: 'Pollen filter'},
    //       {AppLocalizations.of(context)!.driving!:'Distance control'},
    //       {AppLocalizations.of(context)!.driving!:'With brake function (limiter)'},
    //       {AppLocalizations.of(context)!.illumination!:'Map/reading lamps - for 1st row'},
    //       {AppLocalizations.of(context)!.illumination!:'Map/reading lamps - for 2nd row'},
    //       {AppLocalizations.of(context)!.key!:'Keyless start - key/fob proximity related'},
    //       {AppLocalizations.of(context)!.start!:'Starter button - key/fob proximity'},
    //       {AppLocalizations.of(context)!.armrests!:'Front centre (shared)'},
    //       {AppLocalizations.of(context)!.armrests!:'Rear centre (shared)'},
    //       {AppLocalizations.of(context)!.grabHandles!:'Passengers side'},
    //       {AppLocalizations.of(context)!.grabHandles!:'2nd row'},
    //       {AppLocalizations.of(context)!.sunvisor!:'Illuminated vanity mirrors dual'},
    //       {AppLocalizations.of(context)!.drinkHolders!:'Cup holders - 1st row'},
    //       {AppLocalizations.of(context)!.drinkHolders!:'Cup holders - 2nd row'},
    //       {AppLocalizations.of(context)!.cargoSpace!:'Cargo cover'}
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.lights_windows!: [
    //       {AppLocalizations.of(context)!.headlights!: 'Automatic (light sensitive)'},
    //       {AppLocalizations.of(context)!.headlights!: 'See me home'},
    //       {AppLocalizations.of(context)!.headlights!: 'LED'},
    //       {AppLocalizations.of(context)!.headlights!: 'Electric level adjustment'},
    //       {AppLocalizations.of(context)!.tailLights!:''},
    //       {AppLocalizations.of(context)!.windows!: 'Tinted Windows'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.interior!: [
    //       {AppLocalizations.of(context)!.leatherLook!: 'Leather look - seats'},
    //       {AppLocalizations.of(context)!.leather!: 'Steering wheel'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.seating!: [
    //       {AppLocalizations.of(context)!.frontRowSeats!: 'Height adjustable driver'},
    //       {AppLocalizations.of(context)!.frontRowSeats!: 'Height adjustable passenger'},
    //       {AppLocalizations.of(context)!.electricSeats!: 'Drivers'},
    //       {AppLocalizations.of(context)!.electricSeats!: 'Driver with electric lumbar'},
    //       {AppLocalizations.of(context)!.heated!: 'Heated'},
    //       {AppLocalizations.of(context)!.secondRowSeats!: 'Split fold'},
    //       {AppLocalizations.of(context)!.headrests!: 'Adjustable 1st row (front)'},
    //       {AppLocalizations.of(context)!.headrests!: 'Adjustable 2nd row x3'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.instruments_controls!: [
    //       {AppLocalizations.of(context)!.display!: 'Digital instrument display - full'},
    //       {AppLocalizations.of(context)!.display!: 'Tyre pressure monitoring - with logging/display'},
    //       {AppLocalizations.of(context)!.speed!: 'Speed zone reminder - road sign recognition'},
    //       {AppLocalizations.of(context)!.speed!: 'Speed alert - warning'},
    //       {AppLocalizations.of(context)!.speed!: 'Speed limiter'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.exterior!: [
    //       {AppLocalizations.of(context)!.wheels!: 'Alloy wheels'},
    //       {AppLocalizations.of(context)!.roof!: 'Sunroof'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.body!: [
    //       {AppLocalizations.of(context)!.roof!: 'Roof rails'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.electrical!: [
    //       {AppLocalizations.of(context)!.powerSockets!: '12V sockets - auxiliary'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.transmission_drivetrain!: [
    //       {AppLocalizations.of(context)!.drive!: 'Driving mode - selectable'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.steering!: [
    //       {AppLocalizations.of(context)!.operation!: 'Multi-function steering wheel'},
    //       {AppLocalizations.of(context)!.powerSteering!: 'Electric assist'},
    //       {AppLocalizations.of(context)!.steeringColumn!: 'Tilt and reach'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.brakes!: [
    //       {AppLocalizations.of(context)!.front!: 'Ventilated'},
    //       {AppLocalizations.of(context)!.operation!: '4 wheel disc brakes'},
    //       {AppLocalizations.of(context)!.operation!: 'Regenerative'},
    //       {AppLocalizations.of(context)!.park!: 'Park brake - electric'},
    //     ]
    //   },
    //   {
    //     AppLocalizations.of(context)!.wheels_tyres!: [
    //       {AppLocalizations.of(context)!.frontRim!: '18" alloy wheels'},
    //       {AppLocalizations.of(context)!.spareWheel!: 'Tyre repair kit'},
    //     ]
    //   },
    // ];

    final features = [
      CarFeature(name: 'الصوت المرئي والتواصل', featureItems: [
        FeatureItem(key: 'بلوتوث ', value: "Bluetooth"),
        FeatureItem(key: 'التحكم ', value: "Multi function\nControl Screen")
      ])
    ];

    return ListView.builder(
      itemCount: features.length,
      itemBuilder: (context, index) {

        return ExpansionTile(
          title: Text(
            features[index].name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          children: features[index]
              .featureItems
              .map((featureItem) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                            featureItem.key,
                            style: const TextStyle(
                      fontWeight: FontWeightHelper.medium,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 32.0), // Space between key and value
                Expanded(
                  flex: 3,
                            child: Text(
                              featureItem.value,
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.start,
                            )
                            // Column(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: entry.value.map((item) {
                            //     return Padding(
                            //       padding: const EdgeInsets.only(bottom: 8.0),
                            //       child: Text(
                            //         item,
                            //         style: TextStyle(color: Colors.grey[700]),
                            //         textAlign: TextAlign.start,
                            //       ),
                            //     );
                            //   }).toList(),
                            // ),
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
