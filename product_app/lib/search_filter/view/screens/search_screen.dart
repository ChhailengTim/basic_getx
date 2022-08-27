import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/search_filter/model/search_model.dart';
import 'package:product_app/search_filter/view/screens/search_detail.dart';
import 'package:product_app/search_filter/view/widget/cat_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();
  List<Book> books = allBook;
  int selectedIndex = 0;
  bool selected = false;
  final List<String> chipList = [
    'meow',
    'cat',
    'fat',
    'ter ter',
    'ly ly',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search & Filter'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ActionChip(
                  backgroundColor: selected ? Colors.orange : Colors.black12,
                  label: const Text(
                    'All',
                  ),
                  onPressed: () {
                    selected = !selected;
                    searchBook('');
                  }),
              Row(
                children: chipList
                    .asMap()
                    .entries
                    .map(
                      (e) => buildChip(
                          text: e.value,
                          onTap: () {
                            searchBook(e.value);
                            selectedIndex = e.key;
                            setState(() {});
                          },
                          selected: selectedIndex == e.key),
                    )
                    .toList(),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: TextFormField(
              controller: controller,
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
            child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  return Hero(
                    tag: '${book.title}',
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => SearchDetail(
                              book: book,
                            ));
                      },
                      child: CatCard(book: book),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  void searchBook(String query) {
    final suggestions = allBook.where((book) {
      final catTitle = book.title!.toLowerCase();
      final input = query.toLowerCase();
      return catTitle.contains(input);
    }).toList();
    setState(() => books = suggestions);
  }
}

Widget buildChip(
    {required String? text, VoidCallback? onTap, bool selected = false}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: GestureDetector(
      onTap: onTap,
      child: Chip(
        label: Text(text!),
        backgroundColor: selected ? Colors.orange : Colors.black12,
      ),
    ),
  );
}
