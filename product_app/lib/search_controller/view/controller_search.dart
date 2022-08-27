import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/search_controller/controller/search_cotroller.dart';

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({super.key});

  @override
  State<ControllerScreen> createState() => _ControllerScreenState();
}

final List<String> listChip = [
  'meow',
  'cat',
  'fat',
  'ter ter',
  'ly ly',
];

class _ControllerScreenState extends State<ControllerScreen> {
  final searchController = Get.put(SearchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller Search'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ActionChip(
                    label: const Text('All'),
                    onPressed: () {
                      searchBook('');
                    }),
                Row(
                  children: listChip
                      .asMap()
                      .entries
                      .map(
                        (e) => ActionChip(
                          label: Text(e.value),
                          onPressed: () {
                            searchBook(e.value);
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
                onChanged: searchBook,
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: ((context, index) {
                  final listCat = searchController.allCatModel[index];
                  return ListTile(
                    leading: Image.asset(
                      '${listCat.imageURL}',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text('${listCat.title}'),
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
          ],
        ),
      ),
    );
  }

  void searchBook(String query) {
    final suggestions = searchController.allCatModel.where((cat) {
      final catTitle = cat.title!.toLowerCase();
      final input = query.toLowerCase();
      return catTitle.contains(input);
    }).toList();
    setState(() => searchController.allCatModel = suggestions);
  }
}
