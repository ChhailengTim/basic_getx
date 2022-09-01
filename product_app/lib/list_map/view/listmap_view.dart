import 'package:flutter/material.dart';

class ListmapScreen extends StatelessWidget {
  const ListmapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> category = [
      {
        'title': 'Mobiles',
        'disc': 'daily usage',
      },
      {
        'title': 'Essentials',
        'disc': 'use for help',
      },
      {
        'title': 'Appliances',
        'disc': 'makeup body',
      },
      {
        'title': 'Books',
        'disc': 'education',
      },
      {
        'title': 'Fashion',
        'disc': 'trend',
      },
    ];
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < category.length; i++)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${category[i]['title']}',
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                ),
                Text('${category[i]['disc']}'),
              ],
            ),
        ],
      ),
    );
  }
}
