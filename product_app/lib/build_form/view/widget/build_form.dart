import 'package:flutter/material.dart';

Form buildForm({
  required String hint,
  TextEditingController? textEditingController,
  Widget? icon,
  String? labelText,
  void Function()? onChanged,
  String? Function(String?)? validator,
  void Function(String?)? onSaved,
  void Function(String)? onTextChanged,
  TextInputType? keyboardType,
  Widget? suffixIcon,
  Colors?filled,
  double paddingLeft = 8,
  double paddingRight = 8,
}) =>
    Form(
      autovalidateMode: AutovalidateMode.always,
      onChanged: () {
        Form.of(primaryFocus!.context!)!.save();
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: paddingLeft,
          right: paddingRight,
          bottom: 15,
        ),
        child: TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            ),
            filled: true,
            fillColor: Colors.black12,
            focusColor: Colors.black12,
            hoverColor: Colors.black12,
            icon: icon,
            hintText: hint,
            labelText: labelText,
            suffixIcon: suffixIcon,
          ),
          style: const TextStyle(
            color: Colors.black,
          ),
          onSaved: onSaved,
          onChanged: onTextChanged,
          validator: validator,
          keyboardType: keyboardType,
        ),
      ),
    );
