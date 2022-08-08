import 'package:flutter/material.dart';

class ButtonDecreIncre extends StatelessWidget {
  const ButtonDecreIncre({
    Key? key,
    this.title,
    this.onTap,
  }) : super(key: key);
  final String? title;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        highlightColor: Colors.white,
        splashColor: Colors.white,
        child: Ink(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title ?? "Decrement",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
