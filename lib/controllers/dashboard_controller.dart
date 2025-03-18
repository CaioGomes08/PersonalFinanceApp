import 'package:personal_finance/controllers/controller_base.dart';
import 'package:personal_finance/core/exceptions/rest_exception.dart';
import 'package:personal_finance/repositories/interfaces/i_dashboard_repository.dart';
import 'package:personal_finance/stores/dashboard/dashboard_store.dart';

class DashboardController implements ControllerBase<DashboardStore> {
  final IDashboardRepository _dashboardRepository;
  final DashboardStore _dashboardStore;

  DashboardController({
    required IDashboardRepository dashboardRepository,
    required DashboardStore dashboardStore,
  })  : _dashboardRepository = dashboardRepository,
        _dashboardStore = dashboardStore;

  @override
  DashboardStore get store => _dashboardStore;

  Future<void> getDashboardSummary() async {
    store.setBusyDashboard(true);
    store.clearDashboardErrorMessage();
    try {
      final result = await _dashboardRepository.dashboardSummary();
      store.clearDashboardSummary();
      store.setDashboardSummary(result);
    } on RestException catch (e) {
      store.setDashboardErrorMessage(e.message);
    } finally {
      store.setBusyDashboard(false);
    }
  }
}
