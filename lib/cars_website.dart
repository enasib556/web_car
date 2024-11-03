import 'package:flutter/material.dart';
import 'package:cars_web/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'l10n/app_localizations.dart';
import 'model/locale.dart';

class CarsWebsite extends StatelessWidget {
  final AppRouter appRouter;

  const CarsWebsite({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocaleModel(),
      child: Consumer<LocaleModel>(
        builder: (context, localeModel, child) => MaterialApp(
          title: 'موقع سيارات',
          theme: ThemeData(
            primaryColor: kGreenColor,
            primarySwatch: Colors.green,
            textTheme: GoogleFonts.ibmPlexSansArabicTextTheme(),
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          locale: localeModel.locale,
          localizationsDelegates: [
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
            Locale('ar', ''),
          ],
          initialRoute: Routes.homeScreen,
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }
}
