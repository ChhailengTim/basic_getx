import 'package:get/get.dart';
import 'package:product_app/api_dio/model/dio_model.dart';
import 'package:product_app/api_dio/view_model/dio_repository/constants.dart';

class DioData extends GetxController {
  Future getProjectFile(
    PaginationModel pagination, {
    Map<String, dynamic>? filter,
  }) async {
    try {
      var response = await dio.post('/get_project_filter', data: {
        'page': pagination.currentPage + 1,
        'table_size': pagination.perPage,
        if (filter != null) 'filter': filter,
      });
      if (response.statusCode == 200) {
        final responseData = response.data['data'];
        return {
          'data': projectToList(responseData['data']),
          'pagination':paginationModelFromJson(responseData['pagination']),
        };
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
