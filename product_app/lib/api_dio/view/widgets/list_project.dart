import 'package:flutter/material.dart';
import 'package:product_app/api_dio/model/dio_model.dart';
import 'package:product_app/api_dio/view/widgets/image_cache.dart';

class ListProject extends StatelessWidget {
  final ProjectModel projectModel;
  final GestureTapCallback? onTap;
  const ListProject({Key? key, this.onTap, required this.projectModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            imageCached(projectModel.imageThumbnail,
                width: double.infinity - 16,
                height: (double.infinity - 16) / 2.5,
                borderRadius: BorderRadius.circular(15)),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          projectModel.projectName!,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.pin_drop,
                              size: 14,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 5),
                            Text(projectModel.provinceName!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(projectModel.projectTypeName!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
