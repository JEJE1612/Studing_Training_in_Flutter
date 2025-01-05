import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/theming/styles.dart';

class TermsAndConditionsText extends StatefulWidget {
  const TermsAndConditionsText({super.key});

  @override
  State<TermsAndConditionsText> createState() => _TermsAndConditionsTextState();
}

class _TermsAndConditionsTextState extends State<TermsAndConditionsText> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,  
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging , you agree to our',
            style: TextStyles.font13GrayRagular,
          ),
          TextSpan(
            text: 'Term & Conditions',
            style: TextStyles.font13DarkBlueRegular
          ),
          TextSpan(
            text: 'and',
            style: TextStyles.font13GrayRagular.copyWith(height: 1.5)
          ),
          TextSpan(
            text: "Privacy policy",
            style: TextStyles.font13DarkBlueRegular
          )

        ]
      )
      );
  }
}