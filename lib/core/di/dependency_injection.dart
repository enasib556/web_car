import 'package:get_it/get_it.dart';

import '../../utils/responsive_helper.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton(() => ResponsiveHelper());
}