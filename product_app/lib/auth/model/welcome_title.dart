
import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Here to Get',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.purple[300],
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          'Welcome!',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                color: Colors.purple[300],
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
