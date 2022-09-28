import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  const ListData({
    Key? key,
    this.image,
    this.proName,
    this.phones,
    this.provinceName,
  }) : super(key: key);
  final String? image;
  final String? proName;
  final String? phones;
  final String? provinceName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      image ??
                          'https://img.youtube.com/vi/812oQ40vGAI/maxresdefault.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                proName ?? 'data',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                phones ?? 'data',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                provinceName ?? 'data',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
