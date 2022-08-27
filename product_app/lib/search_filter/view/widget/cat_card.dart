
import 'package:flutter/material.dart';
import 'package:product_app/search_filter/model/search_model.dart';

class CatCard extends StatelessWidget {
  const CatCard({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              height: 100,
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
    );
  }
}
