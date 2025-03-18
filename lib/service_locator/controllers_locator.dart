import 'package:get_it/get_it.dart';
import 'package:personal_finance/controllers/dashboard_controller.dart';

class ControllersLocator {
  ControllersLocator() {
    GetIt.I.registerFactory(
      () => DashboardController(
        dashboardRepository: GetIt.I.get(),
        dashboardStore: GetIt.I.get(),
      ),
    );
  }
}
