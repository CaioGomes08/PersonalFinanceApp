import 'package:dio/dio.dart';
import 'package:personal_finance/core/exceptions/rest_exception.dart';
import 'package:personal_finance/core/rest_service/rest_service.dart';
import 'package:personal_finance/dto/dashboard_dto.dart';
import 'package:personal_finance/repositories/interfaces/i_dashboard_repository.dart';
import 'package:personal_finance/utils/app_config_utils.dart';

class DashboardRepository implements IDashboardRepository {
  final RestService _restService;

  DashboardRepository({required RestService restService})
      : _restService = restService;

  @override
  Future<DashboardDto> dashboardSummary() async {
    const url = '${AppConfigUtils.apiUrl}/api/Dashboard/DashboardSummary';
    try {
      Response response = await _restService.instance.get(url);

      if (response.statusCode == 200) {
        return DashboardDto.fromMap(response.data);
      }

      throw RestException(
        message: 'Erro ao buscar dados do dashboard',
        statusCode: response.statusCode ?? 500,
      );
    } on DioException catch (e) {
      throw RestException(
        message: 'Erro ao buscar dados do dashboard',
        statusCode: e.response?.statusCode ?? 500,
      );
    } catch (e) {
      throw RestException(
          message: 'Erro ao buscar dados do dashboard', statusCode: 500);
    }
  }
}
