import 'package:flutter/material.dart';

class AccumulatorWidget extends StatefulWidget {
  const AccumulatorWidget({Key? key}) : super(key: key);

  @override
  AccumulatorWidgetState createState() => AccumulatorWidgetState();
}

class AccumulatorWidgetState extends State<AccumulatorWidget> {
  Accumulator accumulator = Accumulator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('${accumulator.value}')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              accumulator.increment(2);
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
