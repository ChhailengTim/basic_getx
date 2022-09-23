import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:product_app/api_dio/view/widgets/loading.dart';

Widget imageCached(
  String? imageUrl, {
  double? width,
  double? height,
  BoxFit? fit,
  BorderRadius? borderRadius = BorderRadius.zero,
}) =>
    ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: imageUrl ??
            "https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image.png",
        width: width,
        height: height,
        fit: fit ?? BoxFit.cover,
        imageBuilder: (context, imageProvider) => DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                    Colors.transparent, BlendMode.colorBurn)),
          ),
        ),
        placeholder: (context, url) => circularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(
          Icons.image_not_supported,
          size: double.infinity / 3,
          color: Colors.grey,
        ),
      ),
    );
