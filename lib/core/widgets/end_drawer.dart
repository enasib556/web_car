import 'package:cars_web/core/icons/icons.dart';
import 'package:cars_web/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../utils/responsive_helper.dart';
import '../routing/app_router.dart';

class MyEndDrawer extends StatefulWidget {
  const MyEndDrawer({super.key});

  @override
  State<MyEndDrawer> createState() => _MyEndDrawerState();
}

class _MyEndDrawerState extends State<MyEndDrawer> {
  int notificationCount = 0; // Define the notification count

  // Method to increase the notification count
  void _incrementNotification() {
    setState(() {
      notificationCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ResponsiveHelper responsiveHelper = GetIt.instance<ResponsiveHelper>();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 100,
            child: DrawerHeader(
              child: Center(
                child: ListTile(
                  leading:  Image.asset(IconsApp.user,width: 30,height: 30,),
                  title: const Text(
                    'الاشتراك / تسجيل الدخول',
                    style: TextStyle(color: Colors.blue,fontSize: 13,fontWeight: FontWeight.bold),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right:10),
                    child: Stack(
                      children: [
                        const Icon(
                          Icons.notifications,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 16,
                              minHeight: 16,
                            ),
                            child: Text(
                              '$notificationCount', // Use dynamic notification count
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ListTile(
              title: const Text('الرئيسية',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                _incrementNotification(); // Increment notification on tap
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ListTile(
              title: InkWell(onTap: (){Navigator.pushNamed(context, Routes.buyScreen);},child: const Text('شراء',style: TextStyle(fontWeight: FontWeight.bold),)),
              trailing: IconButton(onPressed: (){Navigator.pushNamed(context, Routes.buyScreen); }, icon:const Icon(Icons.keyboard_arrow_left_outlined)),
              onTap: () {
                _incrementNotification(); // Increment notification on tap
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ListTile(
              title: const Text('حسابي',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.keyboard_arrow_left_outlined)),
              onTap: () {
                _incrementNotification(); // Increment notification on tap
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ListTile(
              title: const Text('التواصل معنا',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: IconButton(onPressed: (){}, icon:  const Icon(Icons.keyboard_arrow_left_outlined)),
              onTap: () {
                _incrementNotification(); // Increment notification on tap
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: ListTile(
              title: const Text('المساعده',style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: IconButton(onPressed: (){}, icon:  const Icon(Icons.keyboard_arrow_left_outlined)),
              onTap: () {
                _incrementNotification(); // Increment notification on tap
              },
            ),
          ),
          const SizedBox(height: 20,),
          const Divider(color: Color(0xffb3b3b3)),
          const SizedBox(height: 20,),
          const Padding(
            padding:  EdgeInsets.only(right: 20),
            child:  ListTile(
              title:  Text('الشروط والأحكام',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.only(right: 20),
            child:  ListTile(
              title:  Text('خصوصية',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(height: responsiveHelper.isTablet(context)?50:30),
          const Divider(color: Color(0xffb3b3b3)),
          const SizedBox(height: 30,),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(
                children: [
                 Image.asset(IconsApp.facebook,height: 40, width: 40,),
                  const SizedBox(width: 10,),
                  Image.asset(IconsApp.twitter,height: 40, width: 40,),
                  const SizedBox(width: 10,),
                  Image.asset(IconsApp.instgram,height: 40, width: 40,),
                  const SizedBox(width: 10,),
                  Image.asset(IconsApp.youtube,height: 40, width: 40,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
