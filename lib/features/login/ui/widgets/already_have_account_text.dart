import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:TextSpan(
          children:[
          TextSpan(
          text: "Areadly have an account ?",
          style: TextStyles.font13DarkBlueRegular, 
      ) ,
      TextSpan(
        text: 'Sign Up',
        style: TextStyles.font13BlueSemiBlod
      )
  ]
) ,
      textAlign: TextAlign.center
      );
  }
}
