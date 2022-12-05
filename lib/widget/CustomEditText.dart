import 'package:flutter/material.dart';

class EditText extends StatelessWidget {
  final String hint;

  const EditText(this.hint, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hint,
        contentPadding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
      ),
      style: const TextStyle(fontFamily: 'Battambang-regular'),
    );
  }
}
