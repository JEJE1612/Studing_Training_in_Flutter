import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/theming/colors.dart';
import 'package:flutter_complete_advanced/cores/theming/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black70Weight = TextStyle(
      fontSize: 24.sp, 
      fontWeight: FontWeightHelper.bold, 
      color: Colors.black);

  static TextStyle font32BlueBlod = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorsManager.mainBlue);

  static TextStyle font24BlueBlod = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManager.mainBlue);

  static TextStyle font13GrayRagular = TextStyle(
     fontSize: 13.sp,
     fontWeight: FontWeight.normal,
     color: Colors.black
  );

  static TextStyle font13BlueRagular = TextStyle(
     fontSize: 13.sp,
     fontWeight: FontWeight.normal,
     color: ColorsManager.mainBlue
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
     fontSize: 13.sp,
     fontWeight: FontWeightHelper.regular,
     color: ColorsManager.darkBlue
  );

  static TextStyle font13BlueSemiBlod = TextStyle(
     fontSize: 13.sp,
     fontWeight: FontWeightHelper.semiBold,
     color: ColorsManager.mainBlue
  );
  static TextStyle font14GrayRagular = TextStyle(
     fontSize: 14.sp,
     fontWeight: FontWeightHelper.regular,
     color: ColorsManager.gray
  );

  static TextStyle font14LightGrayRegular = TextStyle(
     fontSize: 14.sp,
     fontWeight:FontWeightHelper.regular,
     color: ColorsManager.lightGray
  );
  static TextStyle font14DarkBlueMedium = TextStyle(
     fontSize: 14.sp,
     fontWeight:FontWeightHelper.medium,
     color: ColorsManager.darkBlue
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
     fontSize: 16.sp,
     fontWeight: FontWeightHelper.medium,
     color: Colors.white
  );


  static TextStyle font15DarkBlureMeduim = TextStyle(
     fontSize: 15.sp,
     fontWeight: FontWeightHelper.medium,
     color: ColorsManager.darkBlue
  );
  static TextStyle font14BlueSemiBold = TextStyle(
     fontSize: 16.sp,
     fontWeight: FontWeightHelper.semiBold,
     color: ColorsManager.darkBlue
  );
}
