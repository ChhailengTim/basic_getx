import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  final EdgeInsetsGeometry margin; // margin bottom

  ShimmerLoadingWidget({
    Key? key,
    required this.width,
    required this.height,
    this.shapeBorder = const RoundedRectangleBorder(),
    this.margin = EdgeInsets.zero,
  });

  Widget rectangular() {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 2500),
      baseColor: Colors.grey,
      highlightColor: Colors.cyan,
      child: Container(
        margin: margin,
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: shapeBorder,
        ),
      ),
    );
  }
}
