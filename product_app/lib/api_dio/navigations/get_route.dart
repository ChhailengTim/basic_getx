import 'package:get/get.dart';
import 'package:product_app/api_dio/navigations/route_name.dart';
import 'package:product_app/api_dio/view/widgets/projects/project_detail.dart';


class GetRoutes extends RouteNames {
  List<GetPage> get routes => [
        // general screens
        GetPage(name: detailPage, page: () =>  ProjectDetail()),
       
      ];
}
