import 'package:flutter/material.dart';

class SliverScreens extends StatelessWidget {
  const SliverScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: false,
            floating: false,
            flexibleSpace: Image.asset('assets/cat.jpg'),
          ),
          SliverToBoxAdapter(
            child: Image.asset('assets/cat.jpg'),
          ),
          SliverToBoxAdapter(
            child: Image.asset('assets/cat.jpg'),
          ),
          SliverToBoxAdapter(
            child: Image.asset('assets/cat.jpg'),
          ),
        ],
      ),
    );
  }
}
