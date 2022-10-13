import 'package:get/get.dart';
import 'package:product_app/tourapp/model/tour_model.dart';
import 'package:product_app/tourapp/view_model/repo/tour_repo.dart';

class AttractionViewModel extends GetxController {
  final _attractionRepository = Get.put(AttractionRepository());
  final RxList<AttractionModel> _attractionList = <AttractionModel>[].obs;
  List<AttractionModel> get attractionList => _attractionList.toList();
  final RxList<AttractionModel> _attractionListData = <AttractionModel>[].obs;
  List<AttractionModel> get attractionListData => _attractionListData.toList();
  @override
  void onInit() {
    getAttractionSave();
    super.onInit();
  }

  Future getAttraction() async {
    final response = await _attractionRepository.getAttractionData();
    if (response != null) {
      _attractionList.addAll(response);
      update();
    }
  }

  Future getAttractionSave() async {
    final response = await _attractionRepository.getAttraction();
    if (response != null) {
      _attractionListData.addAll(response);
      update();
    }
  }
}
