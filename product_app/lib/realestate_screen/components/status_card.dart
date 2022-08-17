
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 130,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(text ?? 'null'),
      ),
    );
  }
}