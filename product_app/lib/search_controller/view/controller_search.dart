import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/cool_drop_down/view/cool_view.dart';
import 'package:product_app/search_controller/controller/search_cotroller.dart';

class ControllerScreen extends StatelessWidget {
  const ControllerScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchController = Get.put(SearchController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller Search'),
      ),
      body: Obx(
        () => SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  // ActionChip(
                  //     label: const Text('All'),
                  //     onPressed: () {
                  //       searchController.searchCat('');
                  //     }),
                  Row(
                    children: searchController.listChip
                        .asMap()
                        .entries
                        .map(
                          (e) => ActionChip(
                            label: Text(e.value),
                            onPressed: () {
                              searchController.searchCat(e.value);
                            },
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: TextFormField(
                  controller: searchController.controller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_sharp),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                  ),
                  onChanged: searchController.searchCat,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: Image.asset(
                        '${searchController.allCatModel[index].imageURL}',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title:
                          Text('${searchController.allCatModel[index].title}'),
                    );
                  }),
                  separatorBuilder: ((context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  }),
                  itemCount: searchController.allCatModel.length,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const CoolViewScreen());
                },
                child: const Text('CoolDropDown'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
