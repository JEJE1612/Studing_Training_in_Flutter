import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/helpers/extensions.dart';
import 'package:flutter_complete_advanced/cores/routing/routes.dart';
import 'package:flutter_complete_advanced/cores/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
        child: Text(
          'Get Started',
          style: TextStyles.font16GrayBold,
        ));
  }
}
