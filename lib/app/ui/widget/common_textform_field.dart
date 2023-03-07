import 'package:flutter/material.dart';
import 'package:expense_tracker/app/ui/themes/app_colors.dart';

class CommonTextFormField extends StatefulWidget {
  const CommonTextFormField(
      {Key? key,
      required this.hintText,
      this.controller,
      this.validator,
      this.obscureText,
      this.maxLength,
      this.errorText})
      : super(key: key);
  final String hintText;
  final String? errorText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final int? maxLength;

  @override
  State<CommonTextFormField> createState() => _CommonTextFormFieldState();
}

class _CommonTextFormFieldState extends State<CommonTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 14,
        ),
        validator: widget.validator,
        cursorColor: ePrimaryColor,
        controller: widget.controller,
        maxLength: widget.maxLength,
        maxLines: 1,
        obscuringCharacter: "*",
        obscureText: widget.obscureText == true ? !passwordVisible : false,
        decoration: InputDecoration(
            hintText: widget.hintText,
            errorText: widget.errorText,
            hintStyle: const TextStyle(fontFamily: "Oswald"),
            counterText: "",
            contentPadding: const EdgeInsets.only(left: 15),
            enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(
                color: ePrimaryColor,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: ePrimaryColor.withOpacity(.5), width: 2),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: ered, width: 1),
              borderRadius: BorderRadius.circular(8.0),
            ),
            suffixIcon: showPassword()),
      ),
    );
  }

  bool passwordVisible = false;

  Widget showPassword() {
    if (widget.obscureText == true) {
      return ButtonTheme(
          child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
        onPressed: () {
          setState(() {
            passwordVisible = !passwordVisible;
          });
        },
        child: Icon(
          passwordVisible == true ? Icons.visibility : Icons.visibility_off,
          color: egrey.withOpacity(.3),
        ),
      ));
    } else {
      return const SizedBox.shrink();
    }
  }
}
