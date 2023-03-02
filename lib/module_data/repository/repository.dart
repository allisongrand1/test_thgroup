import 'package:get_it/get_it.dart';
import 'package:test_thgroup/module_data/service/service.dart';

GetIt getIt = GetIt.instance;

class Repository {
  void setup() {
    getIt.registerSingleton<Future<List<dynamic>>>(Service().getCompanies());
  }
}
