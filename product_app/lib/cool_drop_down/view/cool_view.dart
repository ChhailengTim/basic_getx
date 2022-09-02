import 'package:flutter/material.dart';
import 'package:cool_dropdown/cool_dropdown.dart';

class CoolViewScreen extends StatefulWidget {
  const CoolViewScreen({
    super.key,
  });
  final String fruit = 'Leng';

  @override
  State<CoolViewScreen> createState() => _CoolViewScreenState();
}

class _CoolViewScreenState extends State<CoolViewScreen> {
  String fruit = '';
  @override
  Widget build(BuildContext context) {
    List dropdownItemList = [
      {'label': 'apple', 'value': 'apple'}, // label is required and unique
      {'label': 'banana', 'value': 'banana'},
      {'label': 'grape', 'value': 'grape'},
      {'label': 'pineapple', 'value': 'pineapple'},
      {'label': 'grape fruit', 'value': 'grape fruit'},
      {'label': 'kiwi', 'value': 'kiwi'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cool Drop Down'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CoolDropdown(
                dropdownList: dropdownItemList,
                onChange: (getFruit) {
                  setState(() {
                    fruit = getFruit['value'];
                  });
                },
                defaultValue: dropdownItemList[2],
              ),
              Text(fruit),
              ElevatedButton(
                onPressed: () {
                  debugPrint(fruit);
                },
                child: const Text('Show data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
