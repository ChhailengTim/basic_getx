// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:product_app/search_filter/model/search_model.dart';

// ignore: must_be_immutable
class SearchDetail extends StatelessWidget {
  const SearchDetail({
    Key? key,
    required this.book,
  }) : super(key: key);
  final Book book;
  // List<Book> book = allBook;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: '${book.title}',
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        '${book.imageURL}',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text('${book.title}'),
            ],
          ),
        ),
      ),
    );
  }
}
