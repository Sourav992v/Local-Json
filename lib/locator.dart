import 'package:get_it/get_it.dart';

import 'business_logic/repository/local_repository.dart';

GetIt locator = GetIt.instance;

void setUpLocator() async {
  locator.registerFactory(() => LocalRepository());
}