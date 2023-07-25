import 'package:flutter/material.dart';

class CustomTextForm extends StatefulWidget {
  const CustomTextForm({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.hint,
    this.keyboardType,
  });

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hint;
  final TextInputType? keyboardType;

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  late bool _obscure;

  @override
  void initState() {
    _obscure = widget.keyboardType == TextInputType.visiblePassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      obscureText: _obscure,
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.keyboardType == TextInputType.visiblePassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscure = !_obscure;
                    });
                  },
                  icon: Icon(_obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                )
              : widget.suffixIcon,
          hintText: widget.hint,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          fillColor: Colors.grey.shade100,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey.shade200,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey.shade200,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey.shade200,
              ))),
    );
  }
}
