import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.lable,
      this.onSaved,
      this.obscureText = false,
      this.icon,
      this.onPressed,  this.controller});
  final String hintText, lable;
  final Function(String?)? onSaved;
  final bool obscureText;
  final Widget? icon;
  final Function()? onPressed;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if ( value==null|| value.isEmpty) {
          return 'Please enter Data';
        }
        return null;
      },
      obscureText: obscureText,
      onFieldSubmitted: onSaved,
      style: AppStyles.textstyle12,
      decoration: InputDecoration(
        suffixIcon:
            IconButton(onPressed: onPressed, icon: icon ?? const Text('')),
        hintText: hintText,
        label: Text(
          lable,
          style: AppStyles.textstyle14.copyWith(color: Colors.white),
        ),
        hintStyle: AppStyles.textstyle14,
        enabledBorder: borderPropreties(),
        focusedBorder: borderPropreties(),
      ),
    );
  }

  OutlineInputBorder borderPropreties() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 54, 67, 74),
      ),
    );
  }
}
