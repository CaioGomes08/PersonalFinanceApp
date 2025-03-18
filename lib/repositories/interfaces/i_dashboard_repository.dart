import 'package:personal_finance/dto/dashboard_dto.dart';

abstract interface class IDashboardRepository {
  Future<DashboardDto> dashboardSummary();
}
