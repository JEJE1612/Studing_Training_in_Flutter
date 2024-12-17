import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/theming/styles.dart';
import 'package:flutter_complete_advanced/features/onboarding/widgets/doc_logo_and_named.dart';
import 'package:flutter_complete_advanced/features/onboarding/widgets/doctor_image_and%20_text.dart';
import 'package:flutter_complete_advanced/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h
            ),
            child: Column(
              children: [
                const DocLogoAndNamed(),
                SizedBox(height: 30.h,),
                const  DoctorImageAndText(),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.' ,
                        style: TextStyles.font13GrayRagular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h,),
                    const GetStartedButton()
                    ],
                  ),
                )
                
              ],
            ),
          ),
        )
        ),
    );
  }
}