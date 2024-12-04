import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../l10n/app_localizations.dart';
import '../../../model/locale.dart';
import '../../../pages/login_page/widgets/user_provider.dart';
import '../../routing/routes.dart';

class DrawerHeaderWidget extends StatefulWidget {
  final int notificationCount;
  final VoidCallback incrementNotification;

  const DrawerHeaderWidget({
    super.key,
    required this.notificationCount,
    required this.incrementNotification,
  });

  @override
  State<DrawerHeaderWidget> createState() => _DrawerHeaderWidgetState();
}

class _DrawerHeaderWidgetState extends State<DrawerHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(
      builder: (context, authProvider, child) {
        final bool isLoggedIn = authProvider.isLoggedIn;
        const String userEmail = 'your_email@example.com';

        return SizedBox(
          height: 100,
          child: DrawerHeader(
            child: Center(
              child: ListTile(
                title: isLoggedIn
                    ? PopupMenuButton<int>(
                  icon: _UserIcon(context),
                  onSelected: (value) {
                    if (value == 1) {
                      // Navigate to profile
                    } else if (value == 2) {
                      authProvider.logout();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Logged out successfully')),
                      );
                    }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 200),
                        child: const Text(userEmail, style: TextStyle(fontSize: 16)),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text('Logout', style: TextStyle(color: Colors.red)),
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
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                trailing: _NotificationIcon(notificationCount: widget.notificationCount),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _UserIcon(BuildContext context) {
    final locale = Provider.of<LocaleModel>(context).currentLocale.languageCode;
    return Padding(
      padding: EdgeInsets.only(left: locale == 'ar' ? 120 : 0, right: locale == 'en' ? 120 : 0),
      child: const Icon(Icons.account_circle, color: Color(0xff4D4D4D), size: 35),
    );
  }
}

class _NotificationIcon extends StatelessWidget {
  final int notificationCount;

  const _NotificationIcon({super.key, required this.notificationCount});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(Icons.notifications, size: 30, color: Colors.blue),
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
            child: Text(
              '$notificationCount',
              style: const TextStyle(color: Colors.white, fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
