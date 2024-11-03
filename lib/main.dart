import 'package:cars_web/pages/login_page/widgets/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cars_website.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(
      ChangeNotifierProvider(
        create: (context) => AuthProvider(),
        child:   CarsWebsite(appRouter: AppRouter(),),
      )
  );
}