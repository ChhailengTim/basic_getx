import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/search_bar/controller/search_controller.dart';
import 'package:product_app/search_bar/view/detail_country.dart';

class SearchBarScreen extends StatelessWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Bar'),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchTip(),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}

class SearchTip extends SearchDelegate {
  final sbc = Get.put(SearchBarController());
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in sbc.searchItem) {
      if (item.toString().toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item.toString());
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return GestureDetector(
            onTap: () {
              Get.to(
                () => DetailCountry(
                  index: result,
                ),
              );
            },
            child: ListTile(
              title: Text(result),
            ),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in sbc.searchItem) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return GestureDetector(
            onTap: () {
              Get.to(
                () => DetailCountry(
                  index: result,
                ),
              );
            },
            child: ListTile(
              title: Text(result),
            ),
          );
        });
  }
}
