import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../l10n/app_localizations.dart';
import '../../../model/locale.dart';
import '../../../pages/login_page/widgets/user_provider.dart';
import '../../routing/routes.dart';

class DrawerMenuItems extends StatefulWidget {
  final VoidCallback incrementNotification;

  const DrawerMenuItems({super.key, required this.incrementNotification});

  @override
  State<DrawerMenuItems> createState() => _DrawerMenuItemsState();
}

class _DrawerMenuItemsState extends State<DrawerMenuItems> {
  @override
  Widget build(BuildContext context) {
    final isLoggedIn = Provider.of<AuthProvider>(context).isLoggedIn;
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildListTile(context, Routes.homeScreen, AppLocalizations.of(context)!.home!),
        _buildListTile(context, Routes.buyScreen, AppLocalizations.of(context)!.buy!),
        _buildListTile(context, Routes.buyScreen, AppLocalizations.of(context)!.electricCar!),
        _buildListTile(context, Routes.sellScreen, AppLocalizations.of(context)!.sell!),
        _buildListTile(context, null, AppLocalizations.of(context)!.contactUs!),
        if (isLoggedIn)
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Provider.of<LocaleModel>(context).currentLocale.languageCode == 'ar'
                  ? 40
                  : 15,
              vertical: 8,
            ),
            child: InkWell(
              onTap: () {
                authProvider.logout();
                setState(() {});
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You have logged out successfully.')),
                );
              },
              child: Text(
                AppLocalizations.of(context)!.logout!,
                style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
          ),

        const SizedBox(height: 20),
         const Divider(color: Color(0xffb3b3b3)),
         const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildListTile(BuildContext context, String? route, String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ListTile(
        title: InkWell(
          onTap: route != null ? () => Navigator.pushNamed(context, route) : null,
          child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        trailing: route != null
            ? IconButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
          icon: const Icon(Icons.keyboard_arrow_left_outlined),
        )
            : null,
        onTap: widget.incrementNotification,
      ),
    );
  }
}


