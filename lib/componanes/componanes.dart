
import 'package:flutter/material.dart';

Widget defaultTextField({
  required TextEditingController? controller,
  TextInputType? type,
  Function()? onTap,
  Function(String)? onChange,
  FormFieldValidator? validator,
  String Function(String?)? onSubmit,
  bool isPassword = false,
  required String? label,


}) {
  return TextFormField(
    controller: controller,
    keyboardType: type,
    obscureText: isPassword,
    onChanged: onChange,
    onTap: onTap,
    onFieldSubmitted: onSubmit,
    validator: validator,
    decoration: InputDecoration(
      labelText: label,
      border: UnderlineInputBorder(),
    ),
  );
}

void navigateTo(Context, Widget) =>
    Navigator.push(Context, MaterialPageRoute(builder: (Context) => Widget));