import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final EdgeInsets? padding;
  final Widget body;
  final String? appBarTitle;
  final Widget? titleWidget;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final Color? appBarColor;
  final Color? titleColor;
  final Color? leadingIconColor;
  final VoidCallback? onBack;
  final List<Widget>? actions;
  final PreferredSize? preferredSize;
  const CustomScaffold({
    Key? key,
    this.padding,
    required this.body,
    this.appBarTitle,
    this.titleWidget,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.backgroundColor,
    this.onBack,
    this.actions,
    this.appBarColor,
    this.titleColor,
    this.leadingIconColor,
    this.preferredSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBarTitle == null && titleWidget == null
          ? null
          : AppBar(
              bottom: preferredSize,
              elevation: 0,
              titleSpacing: 0,
              backgroundColor: appBarColor ?? Colors.white,
              title: appBarTitle != null
                  ? Text(
                      appBarTitle!,
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: titleWidget,
                    ),
            ),
      body: Padding(
        padding: padding ?? const EdgeInsets.all(8),
        child: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset:
          MediaQuery.of(context).viewInsets.vertical > 0 ? true : false,
    );
  }
}
