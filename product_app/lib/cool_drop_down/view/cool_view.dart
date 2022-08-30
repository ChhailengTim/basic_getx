import 'package:flutter/material.dart';
import 'package:cool_dropdown/cool_dropdown.dart';

class CoolViewScreen extends StatelessWidget {
  const CoolViewScreen({super.key});

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
          child: CoolDropdown(
            dropdownList: dropdownItemList,
            onChange: (_) {},
            defaultValue: dropdownItemList[3],
          ),
        ),
      ),
    );
  }
}
