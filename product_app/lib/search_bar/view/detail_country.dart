import 'package:flutter/material.dart';

class DetailCountry extends StatelessWidget {
  const DetailCountry({
    Key? key,
    required this.index,
  }) : super(key: key);
  final String? index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$index',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            '$index',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }
}
