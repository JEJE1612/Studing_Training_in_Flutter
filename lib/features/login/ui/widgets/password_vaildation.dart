import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/helpers/spacing.dart';
import 'package:flutter_complete_advanced/cores/theming/colors.dart';
import 'package:flutter_complete_advanced/cores/theming/styles.dart';

class PasswordVaildation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecaiLCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordVaildation({
    super.key, 
    required this.hasLowerCase, 
    required this.hasUpperCase,
    required this.hasSpecaiLCharacters, 
    required this.hasNumber, 
    required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidation(hasLowerCase, "At least 1 lowercase letter"),
        buildValidation(hasUpperCase, "At least 1 uppercase letter"),
        buildValidation(hasSpecaiLCharacters , "At least 1 Special charater "),
        buildValidation(hasNumber, "At least 1 number "),
        buildValidation(hasMinLength, "At least 8 characters long")


      ],
    );
  }
  Widget buildValidation(bool hasValidated ,String text) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(text,
        style: TextStyles.font13DarkBlueRegular.copyWith(
          decoration: hasValidated?TextDecoration.lineThrough :null ,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: hasValidated ? ColorsManager.gray :ColorsManager.darkBlue,

        ),
        )

      ],
    ) ;
  }
}
