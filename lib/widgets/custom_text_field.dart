import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String labelText;
  bool noIcon;
  Function(String)? onChanged;

  CustomTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      this.noIcon = true,
      this.onChanged});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      onChanged: widget.onChanged,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIconColor: Color(0xFFFF2D55),
        suffixIcon: widget.noIcon
            ? SizedBox()
            : IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: isObscure
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
              ),
        labelText: widget.labelText,
        contentPadding: EdgeInsets.all(15),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey[200]!,
          ),
        ),
      ),
    );
  }
}
