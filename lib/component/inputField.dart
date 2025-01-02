import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "할 일 입력",
        labelStyle: TextStyle(
          color: Colors.grey[600],
          fontSize: 16,
        ),
        hintText: "할 일을 입력해주세요",
        hintStyle: TextStyle(
          color: Colors.grey[400],
          fontSize: 14,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300]!,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
      maxLines: 1,
      textInputAction: TextInputAction.done,
    );
  }
}
