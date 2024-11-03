import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? labelText;
  final int maxLines;
  final FormFieldValidator<String>? validator;

  const CustomTextField({
    this.labelText,
    this.maxLines = 1,
    this.validator,
    super.key,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.labelText);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration:const InputDecoration(
        border:  OutlineInputBorder(),
        filled: true,
        fillColor: Colors.white,
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
      maxLines: widget.maxLines,
      onTap: () {
        if (_controller.text == widget.labelText) {
          _controller.clear();
        }
      },
      style: const TextStyle(color: Colors.black),
      validator: widget.validator,
    );
  }
}
