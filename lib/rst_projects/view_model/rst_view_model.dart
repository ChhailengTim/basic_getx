import 'package:basic_getx/rst_projects/model/rst_model.dart';
import 'package:basic_getx/rst_projects/view_model/repository/rst_repo.dart';
import 'package:get/get.dart';

class RstController extends GetxController {
  final _rstRepo = Get.put(RstRepo());
  final RxList<ProjectModel> _listRstData = <ProjectModel>[].obs;
  List<ProjectModel> get listRstData => _listRstData.toList();

  @override
  void onInit() {
    getsData();
    super.onInit();
  }

  Future getsData() async {
    var response = await _rstRepo.getRstData();
    if (response != null) {
      //print(response);
      //_listRstData.addAll(response);
    } else {}
  }
}
