import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static final Map<String, Map<String, dynamic>> _localizedValues = {
    'en': {
      'home': 'Home',
      'buy': 'Buy',
      'login': 'Login',
      'help': 'help',
      'get_car': 'Get a New Car',
      'login_for_price': 'Log in for price',
      'make': 'Make :',
      'all_makes': 'All Makes',
      'model': 'Model :',
      'all_models': 'All Modals',
      'body_type': 'Body type : ',
      'all_body_types': 'All Body types',
      'location': 'Location',
      'new_and_used': 'New and used',
      'low_price': 'Low Price',
      'high_price': 'High Price',
      'search_by_car': 'Search by car',
      'family': 'Family',
      'ordinary': 'Ordinary',
      'luxurious': 'Luxurious',
      'search': 'Search',
      'new_cars': 'New cars',
      'are_you_looking_for_a_new_car?': 'Are you looking for a new car?',
      'discover_more_cars': 'Discover more cars',
      'all_cars': 'All cars',
      'show_more': 'Show more',
      'contact_us': 'Contact Us',
      'company': 'Company',
      'local_markets': 'Local Markets',
      'consent': 'Consent',
      'contact_us_list': ['Contact Us', 'Help'],
      'company_list': ['About Us', 'Careers', 'Corporate Ads', 'Dealer Ads', 'Shareholders', 'Competitions', 'Become a Dealer', 'Site Map'],
      'local_markets_list': ['Bikes', 'Boats', 'Trucks', 'Caravans', 'Farm machinery', 'Construction', 'TyreSales'],
      'consent_list': ['Privacy', 'Disclosure', 'Terms and Conditions'],
      'sort':'Sort by:',
      'characteristics':'Characteristics',
      'Price_from_highest_to_lowest':'Price: from highest to lowest',
      'Price_from_lowest_to_highest':'Price: from lowest to highest',
      'Kilometer_from_highest_to_lowest':'Kilometer: from highest to lowest',
      'Kilometer_from_lowest_to_highest':'Kilometer: From lowest to highest',
      'year_from_highest_to_lowest':'Year: from highest to lowest',
      'year_from_lowest_to_highest':'Year: from lowest to highest',
      'the_liquidation':'Liquidation',
      'delete_all':'Delete all',
      'popular': 'Popular',
      'list_popular':['Type','Year','Price','Mileage','Transmission','Body Type','New/Used','Fuel/Electric','Keyword'],
      'engine': 'Engine',
      'list_engine':['Drive Type','Fuel Economy','Cylinders','Induction/Turbo','Engine Size','Approved Condition','Engine Description','Brake Towing Capacity','Weight Capacity'],
      'seller_details': 'Seller Details',
      'list_seller_details':['Merchant/Private','Financing',],
      'style': 'Style',
      'list_style':['Lifestyle','Color','Seats','Doors'],
      'features': 'Features',
      'list_features':['Safety Rating ANCAP', 'Full Features'],
      'car_condition': 'Car Condition',
      'list_car_condition':['Certified/Checked','Show Only Cars That Have'],
      'electric': 'Electric',
      'list_electric':['Range','Battery Capacity','Plug Type'],
      'signup_login': 'Sign Up / Login',
      'account':'My Account',
      'terms_and_conditions':'Terms and Conditions',
      'privacy':'Privacy',
      'sell':'Sell',
      'electricCar':'Electric Car',
      "lets_start_with_finding_your_cars_make": "Let’s start with finding your car's make",
      'whats_the_model_of_your_selected_car_make': "What's the model of your {selectedCarMake}?",
      'whats_the_build_year_of_your_selected_car_ar': "What's the build year of your {selectedCarMake} {selectedCarModel}?",
      'whats_the_type_of_your_selected_car_ar': "What is the type of your {selectedCarMake} {selectedCarModel} ({selectedCarYear})?",
      'whats_the_odometer_reading_on_your_car_ar': "What's the odometer reading on your {selectedCarMake} {selectedCarModel} ({selectedCarYear})?",
      'whats_the_location_you_will_sell_car_from_ar': "What's the location you will sell your car from?",
      'how_much_do_you_want_to_list_car_for_ar': "How much do you want to list your car for?",
      'reset_car_ar': 'Reset Car',
      'next_ar': 'Next',
      'back_ar': 'Back',
      'add_odometer_reading_ar': 'Add odometer reading',
      'electric_cars':'Electric Cars',
      'welcome_to_eco_car':'Welcome to eco car',
      'email':'Email :',
      'enter_your_email': ' Enter your email',
      'password':'Password :',
      'enter_your_password': ' Enter your password',
      'please_enter_your_email':'Please enter your email',
      'please_enter_a_valid_email_address':'Please enter a valid email address',
      'please_enter_your_password':'Please enter your password',
      "i_don't_have_any_account":"I don't have any account?",
      'signup':'Sign Up',
      'name':'Name :',
      'enter_your_name':'Enter Your name',
      'please_enter_your_name':'Please enter your name',
      "phone": "Phone:",
      "enter_your_phone": "Enter Your Phone",
      "please_enter_your_phone": "Please enter your phone",
      "i_already_have_account": "I already have an account?",
      'contact_seller':'Contact Seller',
      'view_details':'View Details',
      "submitImages": "Submit Images",
      "resetImages": "Reset Images",
      "uploadCarImages": "Upload Car Images",
      'logout':'Logout',
      'language':'Language',
      'vehicle_description':'Vehicle description',
      'powerplant_type':'Powerplant type',
      'exterior_colour':'Exterior colour',
      'interior_colour':'Interior colour' ,
      'transmission':'Transmission',
      'fuel':'Fuel',
      'bodyType': 'Body type ',
      'overView':'Overview',
      'audio_visual_communication': 'Audio, visual & communication',
      'safety_security': 'Safety & Security',
      'comfort_convenience': 'Comfort & Convenience',
      'lights_windows': 'Lights & Windows',
      'interior': 'Interior',
      'seating': 'Seating',
      'instruments_controls': 'Instruments & Controls',
      'exterior': 'Exterior',
      'body': 'Body',
      'electrical': 'Electrical',
      'transmission_drivetrain': 'Transmission & Drivetrain',
      'steering': 'Steering',
      'brakes': 'Brakes',
      'wheels_tyres': 'Wheels & Tyres',
      'inputs': 'Inputs',
      'bluetooth': 'Bluetooth',
      'controls': 'Controls',
      'speakers': 'Speakers',
      'premium': 'Premium',
      'airbags': 'Airbags',
      'seatbelts': 'Seatbelts',
      'emergency': 'Emergency',
      'vehicle_control': 'Vehicle control',
      'driver_assistance': 'Driver Assistance',
      'security': 'Security',
      'air_conditioning': 'Air conditioning',
      'climate': 'Climate',
      'air_quality': 'Air quality',
      'driving': 'Driving',
      'illumination': 'Illumination',
      'key': 'Key',
      'start': 'Start',
      'armrests': 'Armrests',
      'grab_handles': 'Grab handles',
      'sunvisor': 'Sunvisor',
      'drink_holders': 'Drink holders',
      'cargo_space': 'Cargo space',
      'headlights': 'Headlights',
      'tail_lights': 'Tail lights',
      'windows': 'Windows',
      'leather_look': 'Leather look',
      'leather': 'Leather',
      'front_row_seats': 'Front row seats',
      'electric_seats': 'Electric seats',
      'heated': 'Heated',
      '2nd_row_seats': '2nd row seats',
      'headrests': 'Headrests',
      'display': 'Display',
      'speed': 'Speed',
      'wheels': 'Wheels',
      'roof': 'Roof',
      'power_sockets': 'Power sockets',
      'drive': 'Drive',
      'operation': 'Operation',
      'power_steering': 'Power steering',
      'steering_column': 'Steering column',
      'front': 'Front',
      'park': 'Park',
      'front_rim': 'Front rim',
      'spare_wheel': 'Spare wheel',
      'comments_from_dealer': 'Comments from the dealer',
      'car_details': 'Car Details',
      'ask_dealer_question': 'Ask the dealer a question',
      'message_optional': 'Message (Optional)',
      'type_your_message_here': 'Type your message here',
      'full_name': 'Full name',
      'postcode': 'Postcode',
      'we_are_listening': "We're listening! Tell us what you think",
      'fill_form_next_time': 'Fill in this form for me next time',
      'by_proceeding_agree_terms': "By proceeding, you agree to ecocar network's T&Cs and Privacy Policy.",
      'see_personal_info_statement': 'See Personal Information Collection Statement.',
      'call_dealer': 'Call the dealer',
      'car_code_1134': 'Car code: 1134',
      'name_required': 'Name required',
      'email_required': 'Email required',
      'phone_number_required': 'Phone number required',
      'postcode_required': 'Postcode required',
    },
    'ar': {
      'home': 'الرئيسية',
      'buy': 'شراء',
      'contact_us': 'اتصل بنا',
      'login': 'تسجيل الدخول',
      'help': 'المساعده',
      'get_car': 'احصل علي سيارتك الجديده',
      'login_for_price': 'تسجيل الدخول للحصول على السعر',
      'make': 'الماركة :',
      'all_makes': 'كل الماركات',
      'model': 'المودل :',
      'all_models': 'كل المودلات',
      'body_type': 'نوع الجسم :',
      'all_body_types': 'كل انواع الجسم',
      'location': 'الموقع',
      'new_and_used': 'جديد ومستعمل',
      'low_price': 'أقل سعر',
      'high_price': 'أعلى سعر',
      'search_by_car': 'البحث حسب السيارة',
      'family': 'عائلية',
      'ordinary': 'عادية',
      'luxurious': 'فاخرة',
      'search': 'بحث',
      'new_cars': 'السيارات الجديدة',
      'are_you_looking_for_a_new_car?': 'هل تبحث عن سيارة جديدة؟',
      'discover_more_cars': 'اكتشف المزيد من السيارات',
      'all_cars': 'جميع السيارات',
      'show_more': 'اعرض المزيد',
      'company': 'الشركه',
      'local_markets': 'الأسواق المحلية',
      'consent': 'موافقة',
      'contact_us_list': ['تواصل معنا', 'مساعده'],
      'company_list': ['معلومات عنا', 'وظائف', 'إعلانات الشركات', 'إعلانات تاجر', 'المساهمين', 'المسابقات', 'كن تاجرا', 'خريطة الموقع'],
      'local_markets_list': ['دراجات', 'قوارب', 'الشاحنات', 'قافلة', 'الآلات الزراعية', 'بناء', 'مبيعات الإطارات'],
      'consent_list': ['خصوصية', 'الإفصاح المسؤول', 'الشروط والأحكام'],
      'sort':'فرز حسب :',
      'characteristics':'خصائص',
      'Price_from_highest_to_lowest':'السعر: من أعلى إلى أقل',
      'Price_from_lowest_to_highest':'السعر: من أقل إلى أعلى',
      'Kilometer_from_highest_to_lowest':'كيلومتر: من أعلى إلى أقل',
      'Kilometer_from_lowest_to_highest':'كيلومتر: من أقل إلى أعلى',
      'year_from_highest_to_lowest':'السنة: من أعلى إلى أقل',
      'year_from_lowest_to_highest':'السنة: من أقل إلى أعلى',
      'the_liquidation':'التصفية',
      'delete_all':'مسح الكل',
      'popular': 'الأكثر شعبية',
      'list_popular':['النوع','السنة','السعر', 'عداد المسافات','ناقل الحركة','نوع الهيكل','جديد / مستعمل','وقود / كهربائي', 'الكلمة المفتاحية'],
      'engine': 'المحرك',
      'list_engine':['نوع محرك الاقراص','الاقتصاد في استهلاك الوقود','اسطونات','الحث والتربو','حجم المحرك', 'حالة معتمده للوجه p', 'وصف المحرك','سحب (المكابح)','القدره علي الوزن'],
      'seller_details': 'تفاصيل البائع',
      'list_seller_details':[ 'تاجر/خاص','تمويل',],
      'style': 'الأسلوب',
      'list_style':['نمط الحياة', 'لون', 'مقاعد', 'أبواب'],
      'features': 'المزايا',
      'list_features':['تصنيف السلامة ANCAP', 'المميزات من الألف إلى الياء',],
      'car_condition': 'حالة السيارة',
      'list_car_condition':[ 'معتمد / تم فحصه', 'عرض السيارات التي تحتوي فقط على'],
      'electric': 'كهربائي',
      'list_electric':['يتراوح', 'سعة البطارية', 'نوع القابس'],
      'signup_login': 'الاشتراك / تسجيل الدخول',
      'account':'حسابي',
      'terms_and_conditions':'الشروط والأحكام',
      'sell':'بيع',
      'privacy':'خصوصية',
      'electricCar':'عربيات كهرباء',
      "lets_start_with_finding_your_cars_make":'دعنا نبدأ بالبحث عن نوع سيارتك.',
      'whats_the_model_of_your_selected_car_make': "ما هو موديل سيارتك {selectedCarMake}؟",
      'whats_the_build_year_of_your_selected_car_ar': "ما هو سنة تصنيع سيارتك {selectedCarMake} {selectedCarModel}؟",
      'whats_the_type_of_your_selected_car_ar': "ما هو نوع سيارتك {selectedCarMake} {selectedCarModel} ({selectedCarYear})؟",
      'whats_the_odometer_reading_on_your_car_ar': "ما هو قراءة العداد لسيارتك {selectedCarMake} {selectedCarModel} ({selectedCarYear})؟",
      'whats_the_location_you_will_sell_car_from_ar': "ما هو المكان الذي ستبيع منه سيارتك؟",
      'how_much_do_you_want_to_list_car_for_ar': "كم تريد أن تضع سعر لبيع سيارتك؟",
      'reset_car_ar': 'إعادة تعيين السيارة',
      'next_ar': 'التالي',
      'back_ar': 'رجوع',
      'add_odometer_reading_ar': 'أضف قراءة العداد',
      'electric_cars':'عربيات كهرباء',
      'welcome_to_eco_car':'اهلا بكم في ايكو',
      'email':'البريد الإلكتروني :',
      'enter_your_email': ' أدخل بريدك الإلكتروني',
      'password':'كلمة المرور :',
      'enter_your_password': 'أدخل كلمة المرور الخاصة بك ',
      'please_enter_your_email':'من فضلك أدخل بريدك الإلكتروني',
      'please_enter_a_valid_email_address':'من فضلك أدخل بريدًا إلكترونيًا صالحًا',
      'please_enter_your_password':'من فضلك أدخل كلمة المرور الخاصة بك',
      "i_don't_have_any_account":'ليس لدي حساب؟',
      'signup':' إنشاء حساب',
      'name':'الاسم',
      "enter_your_name": "أدخل اسمك",
      "please_enter_your_name": "من فضلك أدخل اسمك",
      "phone": "الهاتف:",
      "enter_your_phone": "أدخل رقم هاتفك",
      "please_enter_your_phone": "يرجى إدخال رقم هاتفك",
      "i_already_have_account": "هل لديك حساب بالفعل؟",
      'contact_seller':'اتصل بالبائع',
      'view_details':'عرض التفاصيل',
      "submitImages": "إرسال الصور",
      "resetImages": "إعادة تعيين الصور",
      "uploadCarImages": "رفع صور السيارة",
      'logout':'تسجيل الخروج',
      'language':'اللغه',
      'vehicle_description':'وصف المركبة',
      'powerplant_type':'نوع محطة الطاقة',
      'exterior_colour':'اللون الخارجي ',
      'interior_colour':'اللون الداخلي ' ,
      'transmission':'النقل',
      'fuel':'وقود',
      'bodyType': 'نوع الجسم',
      'overView':'نظرة عامة',
      'audio_visual_communication': 'الصوت، المرئي والتواصل',
      'safety_security': 'السلامة والأمان',
      'comfort_convenience': 'الراحة والملاءمة',
      'lights_windows': 'الإضاءة والنوافذ',
      'interior': 'الداخلية',
      'seating': 'المقاعد',
      'instruments_controls': 'الأدوات والتحكم',
      'exterior': 'الخارجية',
      'body': 'الجسم',
      'electrical': 'الكهربائية',
      'transmission_drivetrain': 'النقل ونظام الدفع',
      'steering': 'التوجيه',
      'brakes': 'المكابح',
      'wheels_tyres': 'العجلات والإطارات',
      'inputs': 'المدخلات',
      'bluetooth': 'بلوتوث',
      'controls': 'التحكم',
      'speakers': 'مكبرات الصوت',
      'premium': 'مميز',
      'airbags': 'الوسائد الهوائية',
      'seatbelts': 'أحزمة الأمان',
      'emergency': 'الطوارئ',
      'vehicle_control': 'تحكم المركبة',
      'driver_assistance': 'مساعدة السائق',
      'security': 'الأمان',
      'air_conditioning': 'تكييف الهواء',
      'climate': 'المناخ',
      'air_quality': 'جودة الهواء',
      'driving': 'القيادة',
      'illumination': 'الإضاءة',
      'key': 'المفتاح',
      'start': 'التشغيل',
      'armrests': 'مسند الذراع',
      'grab_handles': 'مقابض الإمساك',
      'sunvisor': 'حاجب الشمس',
      'drink_holders': 'حاملات الأكواب',
      'cargo_space': 'مساحة الشحن',
      'headlights': 'المصابيح الأمامية',
      'tail_lights': 'المصابيح الخلفية',
      'windows': 'النوافذ',
      'leather_look': 'مظهر الجلد',
      'leather': 'الجلد',
      'front_row_seats': 'مقاعد الصف الأمامي',
      'electric_seats': 'المقاعد الكهربائية',
      'heated': 'مدفأة',
      '2nd_row_seats': 'مقاعد الصف الثاني',
      'headrests': 'مسند الرأس',
      'display': 'الشاشة',
      'speed': 'السرعة',
      'wheels': 'العجلات',
      'roof': 'السقف',
      'power_sockets': 'مقابس الطاقة',
      'drive': 'نظام القيادة',
      'operation': 'التشغيل',
      'power_steering': 'توجيه معزز كهربائي',
      'steering_column': 'عمود التوجيه',
      'front': 'الأمام',
      'park': 'الفرامل اليدوية',
      'front_rim': 'إطار أمامي',
      'spare_wheel': 'العجلة الاحتياطية',
      'comments_from_dealer': 'تعليقات من البائع',
      'car_details': 'تفاصيل السيارة',
      'ask_dealer_question': 'اطرح سؤالًا على البائع',
      'message_optional': 'الرسالة (اختياري)',
      'type_your_message_here': 'اكتب رسالتك هنا',
      'full_name': 'الاسم الكامل',
      'postcode': 'الرمز البريدي',
      'we_are_listening': 'نستمع لك! أخبرنا برأيك',
      'fill_form_next_time': 'املأ هذا النموذج لي في المرة القادمة',
      'by_proceeding_agree_terms': 'بالمتابعة، أنت توافق على الشروط والسياسات الخاصة بشبكة ecocar.',
      'see_personal_info_statement': 'راجع بيان جمع المعلومات الشخصية.',
      'call_dealer': 'اتصل بالبائع',
      'car_code_1134': 'رمز السيارة: 1134',
      'name_required': 'الاسم مطلوب',
      'email_required': 'البريد الإلكتروني مطلوب',
      'phone_number_required': 'رقم الهاتف مطلوب',
      'postcode_required': 'الرمز البريدي مطلوب',
    }
  };
  String? get nameRequired => _localizedValues[locale.languageCode]?['name_required'];
  String? get emailRequired => _localizedValues[locale.languageCode]?['email_required'];
  String? get phoneNumberRequired => _localizedValues[locale.languageCode]?['phone_number_required'];
  String? get postcodeRequired => _localizedValues[locale.languageCode]?['postcode_required'];
  String? get carCode1134 => _localizedValues[locale.languageCode]?['car_code_1134'];
  String? get postcode => _localizedValues[locale.languageCode]?['postcode'];
  String? get weAreListening => _localizedValues[locale.languageCode]?['we_are_listening'];
  String? get fillFormNextTime => _localizedValues[locale.languageCode]?['fill_form_next_time'];
  String? get byProceedingAgreeTerms => _localizedValues[locale.languageCode]?['by_proceeding_agree_terms'];
  String? get seePersonalInfoStatement => _localizedValues[locale.languageCode]?['see_personal_info_statement'];
  String? get callDealer => _localizedValues[locale.languageCode]?['call_dealer'];
  String? get askDealerQuestion => _localizedValues[locale.languageCode]?['ask_dealer_question'];
  String? get messageOptional => _localizedValues[locale.languageCode]?['message_optional'];
  String? get typeYourMessageHere => _localizedValues[locale.languageCode]?['type_your_message_here'];
  String? get fullName => _localizedValues[locale.languageCode]?['full_name'];
  String? get carDetails => _localizedValues[locale.languageCode]?['car_details'];
  String? get commentsFromDealer => _localizedValues[locale.languageCode]?['comments_from_dealer'];
  String? get airbags => _localizedValues[locale.languageCode]?['airbags'];
  String? get seatbelts => _localizedValues[locale.languageCode]?['seatbelts'];
  String? get emergency => _localizedValues[locale.languageCode]?['emergency'];
  String? get vehicleControl => _localizedValues[locale.languageCode]?['vehicle_control'];
  String? get driverAssistance => _localizedValues[locale.languageCode]?['driver_assistance'];
  String? get security => _localizedValues[locale.languageCode]?['security'];
  String? get airConditioning => _localizedValues[locale.languageCode]?['air_conditioning'];
  String? get climate => _localizedValues[locale.languageCode]?['climate'];
  String? get airQuality => _localizedValues[locale.languageCode]?['air_quality'];
  String? get driving => _localizedValues[locale.languageCode]?['driving'];
  String? get illumination => _localizedValues[locale.languageCode]?['illumination'];
  String? get key => _localizedValues[locale.languageCode]?['key'];
  String? get start => _localizedValues[locale.languageCode]?['start'];
  String? get armrests => _localizedValues[locale.languageCode]?['armrests'];
  String? get grabHandles => _localizedValues[locale.languageCode]?['grab_handles'];
  String? get sunvisor => _localizedValues[locale.languageCode]?['sunvisor'];
  String? get drinkHolders => _localizedValues[locale.languageCode]?['drink_holders'];
  String? get cargoSpace => _localizedValues[locale.languageCode]?['cargo_space'];
  String? get headlights => _localizedValues[locale.languageCode]?['headlights'];
  String? get tailLights => _localizedValues[locale.languageCode]?['tail_lights'];
  String? get windows => _localizedValues[locale.languageCode]?['windows'];
  String? get leatherLook => _localizedValues[locale.languageCode]?['leather_look'];
  String? get leather => _localizedValues[locale.languageCode]?['leather'];
  String? get frontRowSeats => _localizedValues[locale.languageCode]?['front_row_seats'];
  String? get electricSeats => _localizedValues[locale.languageCode]?['electric_seats'];
  String? get heated => _localizedValues[locale.languageCode]?['heated'];
  String? get secondRowSeats => _localizedValues[locale.languageCode]?['2nd_row_seats'];
  String? get headrests => _localizedValues[locale.languageCode]?['headrests'];
  String? get display => _localizedValues[locale.languageCode]?['display'];
  String? get speed => _localizedValues[locale.languageCode]?['speed'];
  String? get wheels => _localizedValues[locale.languageCode]?['wheels'];
  String? get roof => _localizedValues[locale.languageCode]?['roof'];
  String? get powerSockets => _localizedValues[locale.languageCode]?['power_sockets'];
  String? get drive => _localizedValues[locale.languageCode]?['drive'];
  String? get operation => _localizedValues[locale.languageCode]?['operation'];
  String? get powerSteering => _localizedValues[locale.languageCode]?['power_steering'];
  String? get steeringColumn => _localizedValues[locale.languageCode]?['steering_column'];
  String? get front => _localizedValues[locale.languageCode]?['front'];
  String? get park => _localizedValues[locale.languageCode]?['park'];
  String? get frontRim => _localizedValues[locale.languageCode]?['front_rim'];
  String? get spareWheel => _localizedValues[locale.languageCode]?['spare_wheel'];
  String? get premium => _localizedValues[locale.languageCode]?['premium'];
  String? get controls => _localizedValues[locale.languageCode]?['controls'];
  String? get speakers => _localizedValues[locale.languageCode]?['speakers'];
  String? get bluetooth => _localizedValues[locale.languageCode]?['bluetooth'];
  String? get inputs => _localizedValues[locale.languageCode]?['inputs'];
  String? get wheels_tyres => _localizedValues[locale.languageCode]?['wheels_tyres'];
  String? get brakes => _localizedValues[locale.languageCode]?['brakes'];
  String? get steering => _localizedValues[locale.languageCode]?['steering'];
  String? get transmission_drivetrain => _localizedValues[locale.languageCode]?['transmission_drivetrain'];
  String? get electrical => _localizedValues[locale.languageCode]?['electrical'];
  String? get body => _localizedValues[locale.languageCode]?['body'];
  String? get exterior => _localizedValues[locale.languageCode]?['exterior'];
  String? get instruments_controls => _localizedValues[locale.languageCode]?['instruments_controls'];
  String? get seating => _localizedValues[locale.languageCode]?['seating'];
  String? get interior => _localizedValues[locale.languageCode]?['interior'];
  String? get lights_windows => _localizedValues[locale.languageCode]?['lights_windows'];
  String? get comfort_convenience => _localizedValues[locale.languageCode]?['comfort_convenience'];
  String? get safety_security => _localizedValues[locale.languageCode]?['safety_security'];
  String? get audio_visual_communication => _localizedValues[locale.languageCode]?['audio_visual_communication'];
  String? get overView => _localizedValues[locale.languageCode]?['overView'];
  String? get bodyType => _localizedValues[locale.languageCode]?['bodyType'];
  String? get fuel => _localizedValues[locale.languageCode]?['fuel'];
  String? get transmission => _localizedValues[locale.languageCode]?['transmission'];
  String? get interiorColour => _localizedValues[locale.languageCode]?['interior_colour'];
  String? get exteriorColour => _localizedValues[locale.languageCode]?['exterior_colour'];
  String? get powerPlantType => _localizedValues[locale.languageCode]?['powerplant_type'];
  String? get vehicleDescription => _localizedValues[locale.languageCode]?['vehicle_description'];
  String? get language => _localizedValues[locale.languageCode]?['language'];
  String? get logout => _localizedValues[locale.languageCode]?['logout'];
  String? get uploadCarImages => _localizedValues[locale.languageCode]?['uploadCarImages'];
  String? get resetImages => _localizedValues[locale.languageCode]?['resetImages'];
  String? get submitImages => _localizedValues[locale.languageCode]?['submitImages'];
  String? get viewDetails => _localizedValues[locale.languageCode]?['view_details'];
  String? get contactSeller => _localizedValues[locale.languageCode]?['contact_seller'];
  String? get iAlreadyHaveAccount => _localizedValues[locale.languageCode]?['i_already_have_account'];
  String? get pleaseEnterYourPhone => _localizedValues[locale.languageCode]?['please_enter_your_phone'];
  String? get enterYourPhone => _localizedValues[locale.languageCode]?['enter_your_phone'];
  String? get phone => _localizedValues[locale.languageCode]?['phone'];
  String? get pleaseEnterYourName => _localizedValues[locale.languageCode]?['please_enter_your_name'];
  String? get enterYourName => _localizedValues[locale.languageCode]?['enter_your_name'];
  String? get name => _localizedValues[locale.languageCode]?['name'];
  String? get email => _localizedValues[locale.languageCode]?['email'];
  String? get signup => _localizedValues[locale.languageCode]?['signup'];
  String? get DontHaveAnyAccount => _localizedValues[locale.languageCode]?["i_don't_have_any_account"];
  String? get pleaseEnterAValidEmailAddress => _localizedValues[locale.languageCode]?['please_enter_a_valid_email_address'];
  String? get pleaseEnterYourEmail => _localizedValues[locale.languageCode]?['please_enter_your_email'];
  String? get pleaseEnterYourPassword => _localizedValues[locale.languageCode]?['please_enter_your_password'];
  String? get enterYourPassword => _localizedValues[locale.languageCode]?['enter_your_password'];
  String? get password => _localizedValues[locale.languageCode]?['password'];
  String? get enterYourEmail => _localizedValues[locale.languageCode]?['enter_your_email'];
  String? get welcomeToEcoCar => _localizedValues[locale.languageCode]?['welcome_to_eco_car'];
  String? get electricCars => _localizedValues[locale.languageCode]?['electric_cars'];
  String? get resetCarAr => _localizedValues[locale.languageCode]?['reset_car_ar'];
  String? get nextAr => _localizedValues[locale.languageCode]?['next_ar'];
  String? get backAr => _localizedValues[locale.languageCode]?['back_ar'];
  String? get addOdometerReadingAr => _localizedValues[locale.languageCode]?['add_odometer_reading_ar'];

  String? get howMuchDoYouWantToListCarForAr {
    return _localizedValues[locale.languageCode]?['how_much_do_you_want_to_list_car_for_ar'];
  }

  String? get whatsTheLocationYouWillSellCarFromAr {
    return _localizedValues[locale.languageCode]?['whats_the_location_you_will_sell_car_from_ar'];
  }

  String? get whatsTheOdometerReadingOnYourCarAr {
    return _localizedValues[locale.languageCode]?['whats_the_odometer_reading_on_your_car_ar'];
  }

  String? get whatsTheTypeOfYourSelectedCarAr {
    return _localizedValues[locale.languageCode]?['whats_the_type_of_your_selected_car_ar'];
  }

  String? get whatsTheBuildYearOfYourSelectedCarAr {
    return _localizedValues[locale.languageCode]?['whats_the_build_year_of_your_selected_car_ar'];
  }

  String? get whatsTheModelOfYourSelectedCarMake {
    return _localizedValues[locale.languageCode]?['whats_the_model_of_your_selected_car_make'];
  }

  String? get letsStartToSellCar  => _localizedValues[locale.languageCode]?["lets_start_with_finding_your_cars_make"];

  String? get electricCar => _localizedValues[locale.languageCode]?['electricCar'];
  String? get sell => _localizedValues[locale.languageCode]?['sell'];
  String? get privacy => _localizedValues[locale.languageCode]?['privacy'];
  String? get termsAndConditions => _localizedValues[locale.languageCode]?['terms_and_conditions'];

  String? get account => _localizedValues[locale.languageCode]?['account'];


  String? get signupLogin => _localizedValues[locale.languageCode]?['signup_login'];

  List<String>? get listPopular {
    return _localizedValues[locale.languageCode]?['list_popular'] as List<String>?;
  }

  List<String>? get listEngine {
    return _localizedValues[locale.languageCode]?['list_engine'] as List<String>?;
  }

  List<String>? get listSellerDetails {
    return _localizedValues[locale.languageCode]?['list_seller_details'] as List<String>?;
  }

  List<String>? get listStyle {
    return _localizedValues[locale.languageCode]?['list_style'] as List<String>?;
  }

  List<String>? get listFeatures {
    return _localizedValues[locale.languageCode]?['list_features'] as List<String>?;
  }

  List<String>? get listCarCondition {
    return _localizedValues[locale.languageCode]?['list_car_condition'] as List<String>?;
  }

  List<String>? get listElectric {
    return _localizedValues[locale.languageCode]?['list_electric'] as List<String>?;
  }

  String? get popular => _localizedValues[locale.languageCode]?['popular'];
  String? get engine => _localizedValues[locale.languageCode]?['engine'];
  String? get sellerDetails => _localizedValues[locale.languageCode]?['seller_details'];
  String? get style => _localizedValues[locale.languageCode]?['style'];
  String? get features => _localizedValues[locale.languageCode]?['features'];
  String? get carCondition => _localizedValues[locale.languageCode]?['car_condition'];
  String? get electric => _localizedValues[locale.languageCode]?['electric'];

  String? get location => _localizedValues[locale.languageCode]?['location'];

  String? get deleteAll {
    return _localizedValues[locale.languageCode]?['delete_all'];
  }

  String? get theLiquidation {
    return _localizedValues[locale.languageCode]?['the_liquidation'];
  }

  String? get yearFromLowToHigh {
    return _localizedValues[locale.languageCode]?['year_from_lowest_to_highest'];
  }

  String? get yearFromHighToLow {
    return _localizedValues[locale.languageCode]?['year_from_highest_to_lowest'];
  }

  String? get kilometerFromLowToHigh {
    return _localizedValues[locale.languageCode]?['Kilometer_from_lowest_to_highest'];
  }

  String? get kilometerFromHighToLow {
    return _localizedValues[locale.languageCode]?['Kilometer_from_highest_to_lowest'];
  }

  String? get priceFromLowToHigh {
    return _localizedValues[locale.languageCode]?['Price_from_lowest_to_highest'];
  }

  String? get priceFromHighToLow {
    return _localizedValues[locale.languageCode]?['Price_from_highest_to_lowest'];
  }

  String? get characteristics {
    return _localizedValues[locale.languageCode]?['characteristics'];
  }

  String? get sortBy {
    return _localizedValues[locale.languageCode]?['sort'];
  }

  List<String>? get consentlist {
    return _localizedValues[locale.languageCode]?['consent_list'] as List<String>?;
  }

  List<String>? get localmarketslist {
    return _localizedValues[locale.languageCode]?['local_markets_list'] as List<String>?;
  }

  List<String>? get companylist {
    return _localizedValues[locale.languageCode]?['company_list'] as List<String>?;
  }

  List<String>? get contactuslist {
    return _localizedValues[locale.languageCode]?['contact_us_list'] as List<String>?;
  }

  String? get consent {
    return _localizedValues[locale.languageCode]?['consent'];
  }

  String? get localmarkets {
    return _localizedValues[locale.languageCode]?['local_markets'];
  }

  String? get company {
    return _localizedValues[locale.languageCode]?['company'];
  }

  String? get show_more {
    return _localizedValues[locale.languageCode]?['show_more'];
  }

  String? get allcars {
    return _localizedValues[locale.languageCode]?['all_cars'];
  }

  String? get discovermorecars {
    return _localizedValues[locale.languageCode]?['discover_more_cars'];
  }

  String? get areyoulookingforanewcar {
    return _localizedValues[locale.languageCode]?['are_you_looking_for_a_new_car?'];
  }

  String? get newcars {
    return _localizedValues[locale.languageCode]?['new_cars'];
  }

  String? get search {
    return _localizedValues[locale.languageCode]?['search'];
  }

  String? get searchbycar {
    return _localizedValues[locale.languageCode]?['search_by_car'];
  }

  String? get family {
    return _localizedValues[locale.languageCode]?['family'];
  }

  String? get ordinary {
    return _localizedValues[locale.languageCode]?['ordinary'];
  }

  String? get luxurious {
    return _localizedValues[locale.languageCode]?['luxurious'];
  }


  String? get newandused {
    return _localizedValues[locale.languageCode]?['new_and_used'];
  }

  String? get lowprice {
    return _localizedValues[locale.languageCode]?['low_price'];
  }

  String? get highprice {
    return _localizedValues[locale.languageCode]?['high_price'];
  }

  String? get allbodytypes {
    return _localizedValues[locale.languageCode]?['all_body_types'];
  }

  String? get bodytype {
    return _localizedValues[locale.languageCode]?['body_type'];
  }

  String? get allmodels {
    return _localizedValues[locale.languageCode]?['all_models'];
  }

  String? get model {
    return _localizedValues[locale.languageCode]?['model'];
  }

  String? get allmakes {
    return _localizedValues[locale.languageCode]?['all_makes'];
  }

  String? get make {
    return _localizedValues[locale.languageCode]?['make'];
  }

  String? get login {
    return _localizedValues[locale.languageCode]?['login'];
  }

  String? get getCar {
    return _localizedValues[locale.languageCode]?['get_car'];
  }

  String? get contactUs {
    return _localizedValues[locale.languageCode]?['contact_us'];
  }

  String? get buy {
    return _localizedValues[locale.languageCode]?['buy'];
  }

  String? get help {
    return _localizedValues[locale.languageCode]?['help'];
  }

  String? get home {
    return _localizedValues[locale.languageCode]?['home'];
  }

  String? get login_for_price {
    return _localizedValues[locale.languageCode]?['login_for_price'];
  }
  String? translate(String key) {
    return _localizedValues[locale.languageCode]?[key];
  }


}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
