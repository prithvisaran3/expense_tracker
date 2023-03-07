import 'package:expense_tracker/app/ui/themes/app_font.dart';
import 'package:flutter/material.dart';
import '../themes/app_colors.dart';

import 'common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        margin: const EdgeInsets.all(15.0),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: ePrimaryColor,

        ),
        child: Center(
          child: CommonText(
            text: text,
            fontColor: ewhite,
            fontSize: AppFontSize.twenty,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
