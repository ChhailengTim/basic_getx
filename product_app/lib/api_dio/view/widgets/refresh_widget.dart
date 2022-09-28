import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshWidget {
  final Future Function() onRefresh;
  final Widget child;
  const RefreshWidget({
    Key? key,
    required this.onRefresh,
    required this.child,
  });

  Widget buildAndroid() => RefreshIndicator(
        color: Colors.grey,
        backgroundColor: Colors.white,
        onRefresh: onRefresh,
        child: child,
      );

  Widget buildIOS() => CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          CupertinoSliverRefreshControl(onRefresh: onRefresh),
          SliverToBoxAdapter(child: child)
        ],
      );
}
