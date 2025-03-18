import 'package:get_it/get_it.dart';
import 'package:personal_finance/stores/dashboard/dashboard_store.dart';
import 'package:personal_finance/stores/navigation/navigation_store.dart';

class StoresLocator {
  StoresLocator() {
    GetIt.I.registerFactory<NavigationStore>(() => NavigationStore());
    GetIt.I.registerFactory<DashboardStore>(() => DashboardStore());
  }
}
