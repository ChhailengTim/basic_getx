// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:product_app/search_filter/model/search_model.dart';

// ignore: must_be_immutable
class SearchDetail extends StatelessWidget {
  SearchDetail({
    Key? key,
    this.i,
  }) : super(key: key);

  final int? i;
  List<Book> book = allBook;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: '${book[i!].title}',
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        '${book[i!].imageURL}',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text('${book[i!].title}'),
            ],
          ),
        ),
      ),
    );
  }
}
