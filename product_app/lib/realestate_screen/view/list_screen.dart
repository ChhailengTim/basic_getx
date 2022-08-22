import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F5F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  //const Spacer(),
                  Container(
                    //margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    width: Get.width * .8,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "ស្វែងរកគម្រោង",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return listProperty();
                    },
                    separatorBuilder: (context, indext) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container listProperty() {
    return Container(
      width: Get.width,
      height: Get.height * .35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height * .26,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://scontent.fpnh4-1.fna.fbcdn.net/v/t39.30808-6/298917391_611818530622305_4899983607959906092_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_ohc=jGwRS0FG1nwAX-bkXks&_nc_ht=scontent.fpnh4-1.fna&oh=00_AT8HBsZOPMt-IJEwdPFwAUCC3XTaVgY6vkRo1F9-NXRhXw&oe=6308C661'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const Text(
                  'គម្រោងទី១២',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                Column(
                  children: const [
                    Text('012 332 538'),
                    SizedBox(
                      height: 5,
                    ),
                    Text('012 332 538'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
