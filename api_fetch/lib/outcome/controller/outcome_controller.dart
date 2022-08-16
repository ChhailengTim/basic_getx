import 'package:api_fetch/outcome/model/outcome_model.dart';
import 'package:api_fetch/outcome/repository/repo_outcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutcomeController extends GetxController {
  final outcomeRepository = Get.put(OutcomeRepository());
  final listOutcome = <Outcome>[].obs;
  var pagination = PaginationModel(perPage: 10);
  final isLoaded = false.obs;
  bool hasNext = true;

  List<Outcome> get data => listOutcome.toList();

  Future<void> getOutcome() async {
    try {
      if (pagination.currentPage == 0) listOutcome.clear();
      if (pagination.currentPage < pagination.lastPage) {
        debugPrint(isLoaded.value.toString());
        isLoaded.value = true;
        if (isLoaded.value) return Future.value();
        final response = await outcomeRepository.getOutcome(pagination);
        if (response != null) {
          listOutcome.addAll(response['data']);
          pagination = response['pagination'];
          hasNext = listOutcome.length < pagination.total!;
          update();
        } else {
          hasNext = false;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    isLoaded.value=false;
  }
}
