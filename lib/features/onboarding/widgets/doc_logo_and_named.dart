import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndNamed extends StatelessWidget {
  const DocLogoAndNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svg/logo_App.svg"),
        SizedBox(width:10.w),
        Text(
          'DocDoc', 
          style:TextStyles.font24Black70Weight
        )
      ],
    );
  }
}
// 45:24