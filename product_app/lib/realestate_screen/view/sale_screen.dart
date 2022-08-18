import 'package:flutter/material.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('បញ្ជីលក់'),
      ),
      body: Row(
        children: const [
          Chip(
            label: Text('All'),
          ),
          Chip(
            label: Text('Pending'),
          ),
        ],
      ),
    );
  }
}
