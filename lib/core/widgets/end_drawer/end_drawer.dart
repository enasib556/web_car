import 'package:cars_web/core/widgets/end_drawer/_drawerFooter%20.dart';
import 'package:cars_web/core/widgets/end_drawer/_drawerHeader.dart';
import 'package:cars_web/core/widgets/end_drawer/_drawerMenuItems.dart';
import 'package:flutter/material.dart';
class MyEndDrawer extends StatefulWidget {
  const MyEndDrawer({super.key});

  @override
  State<MyEndDrawer> createState() => _MyEndDrawerState();
}

class _MyEndDrawerState extends State<MyEndDrawer> {
  int notificationCount = 0;

  void _incrementNotification() {
    setState(() {
      notificationCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeaderWidget(
            notificationCount: notificationCount,
            incrementNotification: _incrementNotification,
          ),
          Expanded(
            child: ListView(
              children: [
                DrawerMenuItems(
                  incrementNotification: _incrementNotification,
                ),
                const DrawerFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
