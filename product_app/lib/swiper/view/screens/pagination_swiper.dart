import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaginationSwiper extends StatelessWidget {
  const PaginationSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagination Swiper'),
      ),
      body: ConstrainedBox(
          constraints: BoxConstraints.loose(Size(Get.width, 170.0)),
          child: Swiper(
            outer: false,
            itemBuilder: (c, i) {
              return Wrap(
                runSpacing: 6.0,
                children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map((i) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.12,
                          width: MediaQuery.of(context).size.width * 0.12,
                          child: Image.network(
                              "https://i.guim.co.uk/img/media/26392d05302e02f7bf4eb143bb84c8097d09144b/446_167_3683_2210/master/3683.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=11e949fc5d06576bc8b80ec192896753"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text("$i"),
                        )
                      ],
                    ),
                  );
                }).toList(),
              );
            },
            pagination: const SwiperPagination(margin: EdgeInsets.all(5.0)),
            itemCount: 10,
          )),
    );
  }
}
