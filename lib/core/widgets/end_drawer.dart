import 'package:cars_web/core/icons/icons.dart';
import 'package:cars_web/core/routing/routes.dart';
import 'package:cars_web/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import '../../pages/login_page/widgets/user_provider.dart';
import '../../utils/responsive_helper.dart';

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
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final bool isLoggedIn = authProvider.isLoggedIn;
    final String userEmail = 'your_email@example.com'; // Replace with actual email if needed

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 100,
            child: DrawerHeader(
              child: Center(
                child: ListTile(
                  title: isLoggedIn
                      ? PopupMenuButton<int>(
                    icon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 120),
                      child: Icon(
                        Icons.account_circle,
                        color: Color(0xff4D4D4D),
                        size: 35,
                      ),
                    ),
                    color: Colors.white,
                    offset: const Offset(-70, 50),
                    onSelected: (value) {
                      if (value == 1) {
                        // Navigate to profile if needed
                      } else if (value == 2) {
                        authProvider.logout();
                        setState(() {
                          // After logout, show login/signup button again
                        });
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 200),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userEmail,
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                            ],
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 170),
                          child: const Text(
                            'Logout',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  )
                      : InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.loginScreen);
                    },
                    child: Text(
                      AppLocalizations.of(context)!.signupLogin!,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(right: 10),
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
          ...[
            _buildListTile(context, Routes.homeScreen, AppLocalizations.of(context)!.home!),
            _buildListTile(context, Routes.buyScreen, AppLocalizations.of(context)!.buy!),
            _buildListTile(context, Routes.buyScreen, AppLocalizations.of(context)!.electricCar!),
            _buildListTile(context, Routes.sellScreen, AppLocalizations.of(context)!.sell!),
            _buildListTile(context, null, AppLocalizations.of(context)!.contactUs!),
          ],
          const SizedBox(height: 20),
          const Divider(color: Color(0xffb3b3b3)),
          const SizedBox(height: 20),
          _buildTextTile(AppLocalizations.of(context)!.termsAndConditions!, Colors.grey),
          _buildTextTile(AppLocalizations.of(context)!.privacy!, Colors.grey),
          SizedBox(height: responsiveHelper.isTablet(context) ? 50 : 30),
          const Divider(color: Color(0xffb3b3b3)),
          const SizedBox(height: 30),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(
                children: [
                  Image.asset(IconsApp.facebook, height: 40, width: 40),
                  const SizedBox(width: 10),
                  Image.asset(IconsApp.twitter, height: 40, width: 40),
                  const SizedBox(width: 10),
                  Image.asset(IconsApp.instgram, height: 40, width: 40),
                  const SizedBox(width: 10),
                  Image.asset(IconsApp.youtube, height: 40, width: 40),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String? route, String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ListTile(
        title: InkWell(
          onTap: route != null ? () => Navigator.pushNamed(context, route) : null,
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        trailing: route != null
            ? IconButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          icon: const Icon(Icons.keyboard_arrow_left_outlined),
        )
            : null,
        onTap: _incrementNotification,
      ),
    );
  }

  Widget _buildTextTile(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
