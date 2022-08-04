import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final Widget? icon;
  final String? hintText;
  final String? label;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const CustomTextField({Key? key, this.controller, this.icon, this.hintText, this.label, this.suffixIcon, this.keyboardType}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
              suffixIcon: widget.suffixIcon,
              icon: widget.icon,
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: Colors.white),
              enabledBorder: InputBorder.none,
              labelText: widget.label,
              labelStyle: const TextStyle(color: Colors.white, fontSize: 15),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
