import 'package:mobx/mobx.dart';
import 'package:personal_finance/dto/dashboard_dto.dart';
part 'dashboard_store.g.dart';

class DashboardStore = DashboardStoreBase with _$DashboardStore;

abstract class DashboardStoreBase with Store {
  @observable
  bool busyDashboard = false;

  @action
  void setBusyDashboard(bool value) {
    busyDashboard = value;
  }

  @observable
  DashboardDto dashboardSummary =
      DashboardDto(totalFixedBills: 0, totalNoFixedBills: 0);

  @action
  void setDashboardSummary(DashboardDto dashboard) {
    dashboardSummary = DashboardDto(
      totalFixedBills: dashboard.totalFixedBills,
      totalNoFixedBills: dashboard.totalNoFixedBills,
    );
  }

  @action
  void clearDashboardSummary() {
    dashboardSummary = DashboardDto(totalFixedBills: 0, totalNoFixedBills: 0);
  }

  @observable
  String? dashboardErrorMessage;

  @action
  void setDashboardErrorMessage(String error) {
    dashboardErrorMessage = error;
  }

  @action
  void clearDashboardErrorMessage() {
    dashboardErrorMessage = null;
  }
}
