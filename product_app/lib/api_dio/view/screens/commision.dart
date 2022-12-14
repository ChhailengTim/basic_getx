import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_app/api_dio/view/widgets/refresh_widget.dart';
import 'package:product_app/api_dio/view_model/dio_view_model.dart';

class CommisionScreen extends StatelessWidget {
  CommisionScreen({super.key});
  final projectDioModel = Get.put(ProjectDioModel());

  Future _refresh() async {
    await projectDioModel.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Flexible'),
      ),
      body: RefreshWidget(
        onRefresh: _refresh,
        child: ListView(
          children: [
            GetBuilder<ProjectDioModel>(
              init: ProjectDioModel(),
              initState: (state) => _refresh(),
              builder: (controller) => GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    List<Map<String, dynamic>> commissionList = [
                      {
                        'title': 'TotalCommision',
                        'earn': '10002546\$',
                      },
                      {
                        'title': 'Withdraw',
                        'earn': '2315456\$',
                      },
                      {
                        'title': 'Withdrawable',
                        'earn': '1452456\$',
                      },
                      {
                        'title': 'Remaining',
                        'earn': '31346\$',
                      },
                    ];
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${commissionList[index]['title']}'),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('${commissionList[index]['earn']}')
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Done'),
            ),
          ],
        ),
      ).buildAndroid(),
    );
  }
}
