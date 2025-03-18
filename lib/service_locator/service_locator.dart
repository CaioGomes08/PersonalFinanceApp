import 'package:get_it/get_it.dart';
import 'package:personal_finance/service_locator/controllers_locator.dart';
import 'package:personal_finance/service_locator/repositories_locator.dart';
import 'package:personal_finance/service_locator/stores_locator.dart';

class ServiceLocator {
  ServiceLocator() {
    GetIt.I.allowReassignment = true;

    RepositoriesLocator();

    StoresLocator();

    ControllersLocator();
  }
}
