import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgrandColor;
  final double? horizaontalpadding;
  final double? vetricalpadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgrandColor,
    this.horizaontalpadding,
    this.vetricalpadding,
    this.buttonHeight,
    this.buttonWidth,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed
  
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius?? 16.0)
          )
          ),
          backgroundColor: MaterialStatePropertyAll(
            backgrandColor ?? ColorsManager.mainBlue
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              horizontal: horizaontalpadding ?? 12.w ,
              vertical: vetricalpadding ?? 12.h ,
            )
          ),
         fixedSize: MaterialStateProperty.all(
             Size(buttonWidth?.w ?? double.maxFinite, buttonWidth ?? 50.h )
         ) 
      ),
      child: Text(
        buttonText,
        style: textStyle,
      ),
      onPressed: onPressed,

      );
  }
}
