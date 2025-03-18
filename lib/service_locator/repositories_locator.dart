import 'package:get_it/get_it.dart';
import 'package:personal_finance/core/rest_service/rest_service.dart';
import 'package:personal_finance/repositories/dashboard_repository.dart';
import 'package:personal_finance/repositories/interfaces/i_dashboard_repository.dart';

class RepositoriesLocator {
  RepositoriesLocator() {
    GetIt.I.registerSingleton<RestService>(RestService());

    GetIt.I.registerFactory<IDashboardRepository>(
        () => DashboardRepository(restService: GetIt.I.get()));
  }
}
