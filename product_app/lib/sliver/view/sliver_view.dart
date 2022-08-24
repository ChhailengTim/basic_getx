import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/sliver/view/four_view.dart';

import 'sliver_scroll.dart';
import 'third_view.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Get.to(() => const FourView());
              },
              icon: const Icon(Icons.face),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Get.to(() => const SliverScroll());
                },
                icon: const Icon(Icons.navigate_next),
              ),
              IconButton(
                onPressed: () {
                  Get.to(() => const ThirdScreen());
                },
                icon: const Icon(Icons.arrow_back),
              ),
            ],
            pinned: true,
            floating: true,
            snap: true,
            centerTitle: true,
            stretch: true,
            expandedHeight: 200,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Sliver'),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) {
                return Container(
                  height: 50,
                  color: Colors.red[100 * (index % 9)],
                  alignment: Alignment.center,
                  child: Text('Red $index'),
                );
              },
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 20,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 20,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 20,
                  color: Colors.black,
                ),
              ]),
              itemExtent: 50.0),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 50,
              (context, index) => Container(
                height: 50,
                color: Colors.green[100 * (index % 9)],
                alignment: Alignment.center,
                child: Text('Red $index'),
              ),
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.red,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.yellow,
              padding: const EdgeInsets.all(8.0),
              child: const Text('Welcome to cambodia'),
            ),
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
            children: [
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.black,
              ),
              Container(
                color: Colors.cyan,
              ),
              Container(
                color: Colors.deepOrange,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.indigo,
              ),
              Container(
                color: Colors.lightBlue,
              ),
              Container(
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
