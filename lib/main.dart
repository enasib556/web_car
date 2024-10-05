import 'package:flutter/material.dart';
import 'cars_website.dart';
import 'core/di/dependency_injection.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  runApp(CarsWebsite());
}