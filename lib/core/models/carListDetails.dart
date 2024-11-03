import '../images/images.dart';
import 'carDetails.dart';

List<Car> cars = [
  Car(
      title: "2023 GWM Haval H6 Lux Hybrid Auto",
      location: "QLD . Dealer demo",
      mainImage: ImagesApp.GMW,
      additionalImages: [
        ImagesApp.GMW1,
        ImagesApp.GMW2,
        ImagesApp.GMW3,
      ],
      bodyType: "SUV",
      fuelType: "Hybrid",
      transmission: "Automatic",
      dealerComments:
      "Introducing the all-new 2023 GWM Haval H6 Lux Hybrid! This stunning vehicle combines cutting-edge technology, unmatched performance, and sleek design, making it the perfect choice for those seeking an exceptional driving experience.  Let's start with the basics. This car is brand new, straight from the production line, guaranteeing its pristine condition. With its release in 2023, you can be confident that you are getting the latest and most advanced features ",
      overview: [
        {'Vehicle description': 'B01 Ultra Hybrid Wagon 5dr DHT 2sp 1.5L'},
        {'Powerplant type': 'Hybrid Electric Vehicle (HEV)'},
        {'Exterior colour': 'Crayon Grey'},
        {'Interior colour': 'BLACK'},
        {'Body type': 'SUV, 5 doors, 5 seats'},
        {'Transmission': '2 speed Automatic'},
        {'Engine': '4 cylinders, Petrol Turbo Intercooled, 1.5L'},
        {'Fuel consumption combined': '5.2 L/100km'},
        {'ANCAP safety rating': '5 ★'},
        {'Registration plate': 'Check with seller'},
        {'Build date': 'October 2023'},
        {'Compliance date': 'November 2023'},
      ],
      features: [
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
            {
              'Emergency':
              'Control - crash avoidance with braking (high speed)'
            },
            {
              'Emergency':
              'Control - crash avoidance with braking (low speed)'
            },
            {'Emergency': 'Collision mitigation - reversing with braking'},
            {'Emergency': 'Control - pedestrian avoidance with braking'},
            {'Emergency': 'Collision warning - rearward'},
            {'Emergency': 'Brake assist'},
            {'Emergency': 'Brake emergency display - hazard/stoplights'},
            {
              'Emergency':
              'Collision mitigation - post collision steer/brake'
            },
            {'Emergency': 'Collision mitigation - vulnerable road user'},
            {'Vehicle control': 'ABS (antilock brakes)'},
            {'Vehicle control': 'Traction'},
            {'Vehicle control': 'Electronic stability'},
            {'Vehicle control': 'Corner braking'},
            {'Vehicle control': 'Rollover stability'},
            {'Vehicle control': 'Hill descent'},
            {'Vehicle control': 'Hill holder'},
            {
              'Vehicle control': 'EBD (electronic brake force distribution)'
            },
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
            {'Driving': 'Distance control'},
            {'Driving': 'With brake function (limiter)'},
            {'Illumination': 'Map/reading lamps - for 1st row'},
            {'Illumination': 'Map/reading lamps - for 2nd row'},
            {'Key': 'Keyless start - key/fob proximity related'},
            {'Start': 'Starter button - key/fob proximity'},
            {'Armrests': 'Front centre (shared)'},
            {'Armrests': 'Rear centre (shared)'},
            {'Grab handles': 'Passengers side'},
            {'Grab handles': '2nd row'},
            {'Sunvisor': 'Illuminated vanity mirrors dual'},
            {'Drink holders': 'Cup holders - 1st row'},
            {'Drink holders': 'Cup holders - 2nd row'},
            {'Cargo space': 'Cargo cover'}
          ]
        },
        {
          'Lights & windows': [
            {'Headlights': 'Automatic (light sensitive)'},
            {'Headlights': 'See me home'},
            {'Headlights': 'LED'},
            {'Headlights': 'Electric level adjustment'},
            {'Tail lights': ''},
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
      ]
  ),

  Car(
      title: "2022 LDV D90 Executive Auto 4x4",
      location: "QLD • Dealer demo",
      mainImage: ImagesApp.LDV,
      additionalImages: [
        ImagesApp.LDV1,
        ImagesApp.LDV2,
        ImagesApp.LDV3,
      ],
      bodyType: "SUV",
      fuelType: "Diesel",
      transmission: "Automatic",
      dealerComments:
      'The LDV D90 is a family-size SUV that makes your day to day more comfortable and lets you access adventure. Style. Safety. Performance. Technology. Now you can get behind thewheel ofapremium vehicle without paying a premium price. Heres a true seven-seater with the latest technology standard in every model. Choosefrompetroland diesel engines 2WD or 4WD and two trim levels for even more controlover how you move about the country. Looking for a roomy SUV that makes busy school runs easier and more comfortable? Afteraruggedoff-roader that can handle family adventures? An LDV D90 ',
      overview: [
        {'Vehicle description': 'SV9A Executive Wagon 7st 5dr Spts Auto 8sp 4x4 730kg 2.0DTT'},
        {'Powerplant type': 'Internal Combustion Engine (ICE)'},
        {'Exterior colour': 'Blanc White'},
        {'Interior colour': 'Black Leather'},
        {'Body type': 'SUV, 5 doors, 7 seats'},
        {'Transmission': '8 speed Automatic'},
        {'Engine': '4 cylinders, Diesel Twin Turbo Intercooled, 2.0L'},
        {'Fuel consumption combined': '9.1 L/100km'},
        {'ANCAP safety rating': '5 ★'},
        {'Registration plate': 'Check with seller'},
        {'Build date': 'October 2017'},
        {'Compliance date': 'May 2018'},
        {'Model year':'MY18'}
      ],
      features: [
        {
          'Audio, visual & communication': [
            {'Inputs': 'Aux input USB socket'},
            {'Inputs': 'Internet connectivity via sim preparation'},
            {'Inputs': 'Wireless hotspot'},
            {'Bluetooth': 'Bluetooth'},
            {'Controls': 'Multi-function control screen - colour'},
            {'Entertainment': 'Colour display screen - front'},
            {'Speakers': '11 speaker stereo'},
            {'Speakers': 'Subwoofer'},
            {'Premium':'Sound system'}
          ]
        },
        {
          'Safety & Security': [
            {'Airbags': 'Driver'},
            {'Airbags': 'Passenger'},
            {'Airbags': 'Head for 1st row seats (front)'},
            {'Airbags': 'Head for 2nd row seats'},
            {'Airbags': 'Side for driver '},
            {'Airbags': 'Side for front passenger'},
            {
              'Emergency':
              'Control - crash avoidance with braking (low speed)'
            },
            {
              'Emergency':
              'Control - pedestrian avoidance with braking'
            },
            {'Emergency': 'Brake assist'},
            {'Vehicle control': 'ABS (antilock brakes)'},
            {'Vehicle control': 'Traction'},
            {'Vehicle control': 'Electronic stability'},
            {'Vehicle control': 'Corner braking'},
            {'Vehicle control': 'Rollover stability'},
            {'Vehicle control': 'Trailer sway'},
            {'Vehicle control': 'Hill descent'},
            {'Vehicle control': 'Hill holder'},
            {
              'Vehicle control': 'EBD (electronic brake force distribution)'
            },
            {'Driver Assistance': 'Lane departure warning'},
            {'Driver Assistance': 'Alert/warning - collision forward'},
            {'Driver Assistance': 'Park distance - rear'},
            {'Driver Assistance': 'Camera - rear'},
            {'Security':'Engine immobiliser'},
            {'Security':'Alarm'},
          ]
        },
        {
          'Comfort & convenience': [
            {'Climate': 'Climate control 2 zone'},
            {'Air quality': 'Sensor for pollutants'},
            {'Driving': 'Cruise control'},
            {'Technology': 'Voice recognition'},
            {'Key': 'Keyless start - key/fob proximity related'},
            {'Start': 'Starter button'},
            {'Armrests': 'Rear centre (shared)'},
            {'Armrests': 'Front (driver & passenger)'},
            {'Front storage': 'Seatback pocket - front driver seat'},
            {'Front storage': 'Seatback pocket - front passenger seat'},
            {'Front storage': 'Storage compartment - centre console 1st row'},
            {'Front storage': 'Storage compartment - in dash'},
            {'Drink holders': 'Cup holders - 1st row'},
            {'Drink holders': 'Cup holders - 2nd row'},
            {'Drink holders': 'Cup holders - 3rd row'},
            {'Cargo space': 'Cargo net'},
            {'Cargo space': 'Storage compartment - in cargo area'}
          ]
        },
        {
          'Lights & windows': [
            {'Headlights': 'Active (cornering/steering)'},
            {'Headlights': 'Automatic (light sensitive)'},
            {'Headlights': 'LED'},
            {'Lights':'Daytime running lamps - LED'},
            {'Lights':'Fog lamps - front'},
            {'Lights':'Fog lamps - rear'},
            {'Lights':'Lighting - exterior side'},
            {'Power windows': 'Front & rear'},
            {'Rear view mirror': 'Manual anti-glare'},
            {'Wipers': 'Rain sensor (auto wipers)'},
          ]
        },
        {
          'Interior': [
            {'Leather look': 'Leather look - seats partial'},
            {'Leather': 'Seats - partial'},
            {'Leather': 'Steering wheel'},
            {'Metallic finish': 'Inserts'},
          ]
        },
        {
          'Seating': [
            {'Electric seats': 'Drivers'},
            {'Electric seats': 'Driver with electric lumbar'},
            {'2nd row seats': 'Flat folding'},
            {'2nd row seats': 'Split fold'},
            {'3rd row seats': 'Flat folding'},
            {'3rd row seats': 'Split fold'},
            {'Headrests': 'Adjustable 1st row (front)'},
            {'Headrests': 'Adjustable 2nd row x3'},
            {'Headrests': 'Adjustable 3rd row x2'},
          ]
        },
        {
          'Instruments & controls': [
            {'Display': 'Digital instrument display - full'},
            {'Display': 'Tyre pressure monitoring - with logging/display'},
          ]
        },
        {
          'Exterior': [
            {'Body coloured': 'Exterior mirrors partial'},
            {'Boot': 'Power - tailgate/boot'},
            {'Boot': 'Remote boot/hatch release'},
            {'Mirrors': 'Electric'},
            {'Mirrors': 'Electric - folding'},
            {'Mirrors': 'Electric - heated'},
            {'Mudflaps': 'Front'},
            {'Mudflaps': 'Rear'},
            {'Steps': 'Side steps'},
            {'Sunroof':'Electric'}
          ]
        },
        {
          'Body': [
            {'Roof': 'Roof rails'},
            {'Underbody':'Skid plate - front'},
            {'Underbody':'Skid plate - rear'},
          ]
        },
        {
          'Electrical': [
            {'Power sockets': '12V sockets - auxiliary'},
          ]
        },
        {
          'Transmission & Drivetrain': [
            {'Gearbox':'Gear shift paddles behind steering wheel'},
            {'Drive': 'Dual range transmission'},
          ]
        },
        {
          'Fuel':[
            {'Fuel use reduction':'Engine - stop start system (when at idle)'}
          ]
        },
        {
          'Steering': [
            {'Power steering': 'Power steering'},
            {'Steering column': 'Tilt and reach'},
          ]
        },
        {
          'Brakes': [
            {'Front': 'Ventilated'},
            {'Rear': 'Solid'},
            {'Park': 'Park brake - electric'},
          ]
        },
        {
          'Wheels & Tyres': [
            {'Front rim':'19" alloy wheels'},
            {'Spare wheel': 'Full size steel'},
          ]
        },
      ]
  ),

  Car(
      title: "2022 LDV D90 Executive Auto 4x4",
      location: "QLD • Dealer demo",
      mainImage: ImagesApp.Range_Rover,
      additionalImages: [
        ImagesApp.Range_Rover1,
        ImagesApp.Range_Rover2,
        ImagesApp.Range_Rover3,
      ],
      bodyType: "SUV",
      fuelType: "Diesel",
      transmission: "Automatic",
      dealerComments:
          'Range Rover Velar \tExplore the world of dynamic driving in the 2017. \tWith its Corris Grey exterior this vehicle is where performance meets practicality. This new arrival is in excellent condition ',
      overview: [
        {'Vehicle description': 'L560 18MY D240 R-Dynamic S Wagon 5dr Spts Auto 8sp AWD 2.0DTT'},
        {'Powerplant type': 'Internal Combustion Engine (ICE)'},
        {'Exterior colour': 'Corris Grey'},
        {'Body type': 'SUV, 5 doors, 5 seats'},
        {'Transmission': '8 speed Automatic'},
        {'Engine': '4 cylinders, Diesel Twin Turbo Intercooled, 2.0L'},
        {'Fuel consumption combined': '5.8 L/100km'},
        {'Registration plate': 'Check with seller'},
        {'Build date': 'October 2022'},
        {'Compliance date': 'December 2022'},
      ],
      features: [
        {
          'Audio, visual & communication': [
            {'Inputs': 'Aux input USB socket'},
            {'Inputs': 'MP3 decoder'},
            {'Bluetooth': 'Bluetooth'},
            {'Controls': 'Smart device integration - Android Auto'},
            {'Controls': 'Smart device integration - Apple CarPlay'},
            {'Controls': 'Smart device app display/control'},
            {'Speakers': '8 speaker stereo'},
          ]
        },
        {
          'Safety & Security': [
            {'Airbags': 'Driver'},
            {'Airbags': 'Passenger'},
            {'Airbags': 'Head for 1st row seats (front)'},
            {'Airbags': 'Head for 2nd row seats'},
            {'Airbags': 'Head for 3rd row seats'},
            {'Airbags': 'Side for driver Side for front passenger'},
            {'Seatbelts': 'Lap/sash for 7 seats'},
            {'Seatbelts': 'Pretensioners 1st row (front)'},
            {
              'Emergency':
              'Control - crash avoidance with braking (low speed)'
            },
            {'Emergency': 'Brake assist'},
            {'Vehicle control': 'ABS (antilock brakes)'},
            {'Vehicle control': 'Traction'},
            {'Vehicle control': 'Electronic stability'},
            {'Vehicle control': 'Corner braking'},
            {'Vehicle control': 'Rollover stability'},
            {'Vehicle control': 'Hill descent'},
            {'Vehicle control': 'Hill holder'},
            {
              'Vehicle control': 'EBD (electronic brake force distribution)'
            },
            {'Driver Assistance': 'Lane departure warning'},
            {'Driver Assistance': 'Alert/warning - collision forward'},
            {'Driver Assistance': 'Alert/warning - road sign display'},
            {'Driver Assistance': 'Warning - driver fatigue'},
            {'Driver Assistance': 'Driver attention detection'},
            {'Driver Assistance': 'Blind spot sensor'},
            {'Driver Assistance': 'Park distance - front'},
            {'Driver Assistance': 'Park distance - rear'},
            {'Driver Assistance': 'Camera - rear'},
            {'Security':'Central locking - key proximity'},
            {'Security':'Central locking - remote/keyless'},
            {'Security':'Engine immobiliser'}
          ]
        },
        {
          'Comfort & convenience': [
            {'Climate': 'Climate control multi-zone'},
            {'Heating': 'Steering wheel - heated'},
            {'Driving': 'Distance control'},
            {'Illumination': 'Ambient lighting'},
            {'Key': 'Keyless start - key/fob proximity related'},
            {'Start': 'Starter button'},
            {'Armrests': 'Front centre (shared)'},
            {'Armrests': 'Rear centre (shared)'},
            {'Front storage': 'Seatback pocket - front driver seat'},
            {'Front storage': 'Seatback pocket - front passenger seat'},
            {'Front storage': 'Storage compartment - centre console 1st row'},
            {'Front storage': 'Storage compartment - in dash'},
            {'Drink holders': 'Cup holders - 1st row'},
            {'Drink holders': 'Cup holders - 2nd row'},
            {'Drink holders': 'Cup holders - 3rd row'},
            {'Cargo space': 'Cargo net'},
            {'Cargo space': 'Storage compartment - in cargo area'}
          ]
        },
        {
          'Lights & windows': [
            {'Headlights': 'Active (cornering/steering)'},
            {'Headlights': 'Automatic (light sensitive)'},
            {'Headlights': 'LED'},
            {'Lights':'Daytime running lamps - LED'},
            {'Lights':'Fog lamps - front'},
            {'Lights':'Fog lamps - rear'},
            {'Lights':'Lighting - exterior side'},
            {'Power windows': 'Front & rear'},
            {'Rear view mirror': 'Manual anti-glare'},
            {'Wipers': 'Rain sensor (auto wipers)'},
          ]
        },
        {
          'Interior': [
            {'Leather look': 'Leather look - seats partial'},
            {'Leather': 'Seats - partial'},
            {'Leather': 'Steering wheel'},
            {'Metallic finish': 'Inserts'},
          ]
        },
        {
          'Seating': [
            {'Electric seats': 'Drivers'},
            {'Electric seats': 'Driver with electric lumbar'},
            {'2nd row seats': 'Flat folding'},
            {'2nd row seats': 'Split fold'},
            {'3rd row seats': 'Flat folding'},
            {'3rd row seats': 'Split fold'},
            {'Headrests': 'Adjustable 1st row (front)'},
            {'Headrests': 'Adjustable 2nd row x3'},
            {'Headrests': 'Adjustable 3rd row x2'},
          ]
        },
        {
          'Instruments & controls': [
            {'Display': 'Digital instrument display - full'},
            {'Display': 'Tyre pressure monitoring - with logging/display'},
          ]
        },
        {
          'Exterior': [
            {'Body coloured': 'Exterior mirrors partial'},
            {'Boot': 'Power - tailgate/boot'},
            {'Boot': 'Remote boot/hatch release'},
            {'Mirrors': 'Electric'},
            {'Mirrors': 'Electric - folding'},
            {'Mirrors': 'Electric - heated'},
            {'Mudflaps': 'Front'},
            {'Mudflaps': 'Rear'},
            {'Steps': 'Side steps'},
            {'Sunroof':'Electric'}
          ]
        },
        {
          'Body': [
            {'Roof': 'Roof rails'},
            {'Underbody':'Skid plate - front'},
            {'Underbody':'Skid plate - rear'},
          ]
        },
        {
          'Electrical': [
            {'Power sockets': '12V sockets - auxiliary'},
          ]
        },
        {
          'Transmission & Drivetrain': [
            {'Gearbox':'Gear shift paddles behind steering wheel'},
            {'Drive': 'Dual range transmission'},
          ]
        },
        {
          'Fuel':[
            {'Fuel use reduction':'Engine - stop start system (when at idle)'}
          ]
        },
        {
          'Steering': [
            {'Power steering': 'Power steering'},
            {'Steering column': 'Tilt and reach'},
          ]
        },
        {
          'Brakes': [
            {'Front': 'Ventilated'},
            {'Rear': 'Solid'},
            {'Park': 'Park brake - electric'},
          ]
        },
        {
          'Wheels & Tyres': [
            {'Front rim':'19" alloy wheels'},
            {'Spare wheel': 'Full size steel'},
          ]
        },
      ]
  ),
];