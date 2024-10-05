import 'package:flutter/material.dart';

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('الرئيسية'),
          onTap: () {
            // Handle the tap
          },
        ),
        ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text('شراء'),
          onTap: () {
            // Handle the tap
          },
        ),
        ListTile(
          leading: Icon(Icons.sell),
          title: Text('بيع'),
          onTap: () {
            // Handle the tap
          },
        ),
        ListTile(
          leading: Icon(Icons.contact_mail),
          title: Text('التواصل معنا'),
          onTap: () {
            // Handle the tap
          },
        ),
      ],
    ));
  }
}
