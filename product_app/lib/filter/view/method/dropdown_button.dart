import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDropDownButton extends StatelessWidget {
  final GlobalKey? globalKey;
  final String hint;
  final List<Map<String, dynamic>> listItems;
  final Map<String, dynamic>? defaultItem;
  final Function(dynamic)? onChanged;
  final double buttonHeight;
  final Color? buttonColor;
  final Color? selectedColor;
  final Color? iconColor;
  final double? dropdownWidth;
  final MainAxisAlignment dropdownItemMainAxis;
  final bool showSelectedIcon;

  const MyDropDownButton({
    Key? key,
    required this.listItems,
    this.defaultItem,
    this.onChanged,
    required this.hint,
    this.buttonHeight = 50,
    this.buttonColor,
    this.selectedColor,
    this.iconColor,
    this.globalKey,
    this.dropdownWidth,
    this.dropdownItemMainAxis = MainAxisAlignment.start,
    this.showSelectedIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoolDropdown(
      dropdownWidth: dropdownWidth,
      placeholder: hint,
      placeholderTS: Get.theme.inputDecorationTheme.hintStyle,
      //dropdown = show all item
      dropdownItemMainAxis: dropdownItemMainAxis,
      dropdownHeight: listItems.length * 60,
      //result = container
      resultHeight: buttonHeight,
      resultWidth: double.infinity,
      resultTS: const TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
      resultBD: BoxDecoration(
          color: buttonColor ?? Colors.black26,
          borderRadius: BorderRadius.circular(5)),
      //selected in dropdown item
      selectedItemTS: const TextStyle(fontSize: 12),
      selectedItemBD: BoxDecoration(
          color: Colors.green[400], borderRadius: BorderRadius.circular(5)),
      unselectedItemTS: const TextStyle(
        color: Colors.black,
        fontSize: 12,
      ),
      defaultValue: defaultItem,
      dropdownList: listItems,
      onChange: (value) {
        if (onChanged != null) {
          onChanged!(value);
        }
      },
    );
  }
}
