import 'package:flutter/material.dart';

class FieldForm extends StatelessWidget {
  final String? hint;
  final bool secur;
  final Icon? vis;
  const FieldForm({super.key, this.hint, required this.secur,this.vis});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secur,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 10),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 243, 222, 33),
            width: 0.8,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 243, 222, 33),
            width: 0.8,
          ),
        ),
        suffixIcon: vis,
      ),
    );
  }
}
