import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    Key? key,
    this.title,
    this.onPressed,
    this.icon,
  }) : super(key: key);
  final String? title;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Text(
              '$title',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: onPressed,
              icon: Icon(icon ?? Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
