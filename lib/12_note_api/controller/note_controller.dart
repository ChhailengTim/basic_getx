import 'package:basic_getx/12_note_api/model/note_product_model.dart';
import 'package:basic_getx/12_note_api/repo/note_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NoteController extends GetxController {
  final _data = <NoteModel>[].obs;
  final _isLoading = false.obs;
  var pagination = Pagination(perPage: 10);
  bool hasNext = true;

  final noteRepo = Get.put(NoteRepo());

  List<NoteModel> get data => _data.toList();
  @override
  void onInit() async {
    await getNote();
    super.onInit();
  }

  Future<void> getNote() async {
    try {
      if (pagination.currentPage == 0) _data.clear();
      if (pagination.currentPage! < pagination.lastPage!) {
        debugPrint(_isLoading.value.toString());
        _isLoading.value = true;
        final responseNote = await noteRepo.getNote(pagination);
        if (responseNote != null) {
          _data.addAll(responseNote['data']);
          pagination = responseNote['pagination'];
          hasNext = _data.length < pagination.total!;
          update();
        } else {
          hasNext = false;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    _isLoading.value = false;
  }
}
