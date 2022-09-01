import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final String? appBarTitle;
  final Widget? titleWidget;
  final List<Widget>? actions;
  const CustomScaffold(
      {Key? key,
      required this.body,
      this.appBarTitle,
      this.titleWidget,
      this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: appBarTitle != null
            ? Text(
                appBarTitle!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            : titleWidget,
        actions: actions,
      ),
      body: body,
    );
  }
}
