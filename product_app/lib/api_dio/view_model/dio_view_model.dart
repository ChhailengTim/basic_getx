import 'package:get/get.dart';
import 'package:product_app/api_dio/model/dio_model.dart';
import 'package:product_app/api_dio/view_model/dio_repository/dio_repo.dart';

class ProjectDioModel extends GetxController {
  final _dataProject = Get.put(DioData());
  bool _isLoading = false;
  bool hasNext = true;

  final RxList<ProjectModel> _projectData = <ProjectModel>[].obs;
  List<ProjectModel> get projectData => _projectData.toList();

  PaginationModel projectDataPerPage = PaginationModel(perPage: 10);

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  Future getData({
    int? provinceID,
    int? projectTypeID,
    int? projectID,
    String? search,
  }) async {
    if (projectDataPerPage.currentPage == 0) _projectData.clear();
    if (projectDataPerPage.currentPage < projectDataPerPage.lastPage) {
      if (_isLoading) return Future.value();
      _isLoading = true;
      final response =
          await _dataProject.getProjectFile(projectDataPerPage, filter: {
        'provinceID': provinceID,
        'projectTypeID': projectTypeID,
        'projectID': projectID,
        'search': search,
      });
      if (response != null) {
        projectDataPerPage = response['pagination'];
        print(projectDataPerPage);
        _projectData.addAll(response['data']);
        hasNext = _projectData.length < projectDataPerPage.total!;
      } else {
        hasNext = false;
      }
    }
    _isLoading = false;
  }
}
