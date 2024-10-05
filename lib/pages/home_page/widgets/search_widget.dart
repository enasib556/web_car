import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../core/widgets/my_card.dart';

class SearchWidget extends StatefulWidget {
  SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  String? selectedBodyType;

  final List<String> bodyTypes = [
    'سيدان',
    'كوبيه',
    'هاتشباك',
    'SUV',
    'كروس أوفر',
    'بيك أب',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyCard(
      height: 400,
      child: Column(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'الماركة:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: size.width * 0.12,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButton<String>(
                              value: selectedBodyType,
                              hint: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'اختر الماركة',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedBodyType = newValue;
                                });
                              },
                              items: bodyTypes.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                              style: const TextStyle(color: Colors.black),
                              underline: const SizedBox(),
                              // Removes the underline
                              dropdownColor: Colors.white,
                              icon: const Icon(Icons.arrow_drop_down),
                              elevation: 8,
                              isExpanded: true,
                              selectedItemBuilder: (BuildContext context) {
                                return bodyTypes.map<Widget>((String item) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: EdgeInsets.all(12),
                                    child: Text(item),
                                  );
                                }).toList();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'الموديل:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: size.width * 0.12,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButton<String>(
                              value: selectedBodyType,
                              hint: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'اختر الموديل',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedBodyType = newValue;
                                });
                              },
                              items: bodyTypes.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                              style: TextStyle(color: Colors.black),
                              underline: SizedBox(),
                              // Removes the underline
                              dropdownColor: Colors.white,
                              icon: Icon(Icons.arrow_drop_down),
                              elevation: 8,
                              isExpanded: true,
                              selectedItemBuilder: (BuildContext context) {
                                return bodyTypes.map<Widget>((String item) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: EdgeInsets.all(12),
                                    child: Text(item),
                                  );
                                }).toList();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'نوع الجسم:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: size.width * 0.12,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButton<String>(
                              value: selectedBodyType,
                              hint: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'اختر نوع الجسم',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedBodyType = newValue;
                                });
                              },
                              items: bodyTypes.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                              style: const TextStyle(color: Colors.black),
                              underline: const SizedBox(),
                              // Removes the underline
                              dropdownColor: Colors.white,
                              icon: const Icon(Icons.arrow_drop_down),
                              elevation: 8,
                              isExpanded: true,
                              selectedItemBuilder: (BuildContext context) {
                                return bodyTypes.map<Widget>((String item) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: EdgeInsets.all(12),
                                    child: Text(item),
                                  );
                                }).toList();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: kGreenColor,
                    minimumSize: const Size(120, 48),
                    // Adjust width and height as needed
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16), // Adjust padding as needed
                  ),
                  child: const Text(
                    'بحث',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.04,
                    child: DropdownButton<String>(
                      value: selectedBodyType,
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'الموقع',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBodyType = newValue;
                        });
                      },
                      items: bodyTypes
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      style: TextStyle(color: Colors.black),
                      underline: SizedBox(),
                      // Removes the underline
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      elevation: 8,
                      isExpanded: true,
                      selectedItemBuilder: (BuildContext context) {
                        return bodyTypes.map<Widget>((String item) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text(item),
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.07,
                    child: DropdownButton<String>(
                      value: selectedBodyType,
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'جديد ومستعمل',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBodyType = newValue;
                        });
                      },
                      items: bodyTypes
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      style: TextStyle(color: Colors.black),
                      underline: SizedBox(),
                      // Removes the underline
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      elevation: 8,
                      isExpanded: true,
                      selectedItemBuilder: (BuildContext context) {
                        return bodyTypes.map<Widget>((String item) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text(item),
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.05,
                    child: DropdownButton<String>(
                      value: selectedBodyType,
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'أقل سعر',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBodyType = newValue;
                        });
                      },
                      items: bodyTypes
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      style: TextStyle(color: Colors.black),
                      underline: SizedBox(),
                      // Removes the underline
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      elevation: 8,
                      isExpanded: true,
                      selectedItemBuilder: (BuildContext context) {
                        return bodyTypes.map<Widget>((String item) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text(item),
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width * 0.05,
                    child: DropdownButton<String>(
                      value: selectedBodyType,
                      hint: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'أعلى سعر',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBodyType = newValue;
                        });
                      },
                      items: bodyTypes
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      style: TextStyle(color: Colors.black),
                      underline: SizedBox(),
                      // Removes the underline
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.arrow_drop_down),
                      elevation: 8,
                      isExpanded: true,
                      selectedItemBuilder: (BuildContext context) {
                        return bodyTypes.map<Widget>((String item) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Text(item),
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Text('البحث حسب السيارة',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.network(
                    'https://resource.csnstatic.com/mobile/carsales/api/home-categories/Family.png',
                    height: 80,
                  ),
                  const Text(
                    'عائلية',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'https://resource.csnstatic.com/mobile/carsales/api/home-categories/First.png',
                    height: 80,
                  ),
                  const Text(
                    'عادية',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Column(
                children: [
                  Image.network(
                    'https://resource.csnstatic.com/mobile/carsales/api/home-categories/Prestige.png',
                    height: 80,
                  ),
                  const Text(
                    'فاخرة',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
