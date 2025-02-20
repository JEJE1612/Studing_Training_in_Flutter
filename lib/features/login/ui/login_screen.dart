import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_advanced/cores/helpers/spacing.dart';
import 'package:flutter_complete_advanced/cores/theming/styles.dart';
import 'package:flutter_complete_advanced/features/login/data/models/login_request_body.dart';
import 'package:flutter_complete_advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_complete_advanced/features/login/ui/app_text_button.dart';
import 'package:flutter_complete_advanced/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_complete_advanced/features/login/ui/widgets/email_and_password.dart';
import 'package:flutter_complete_advanced/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:flutter_complete_advanced/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back',
                        style: TextStyles.font24BlueBlod,
                      ),
                      verticalSpace(8),
                      Text(
                          'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                          style: TextStyles.font14GrayRagular),
                      verticalSpace(36),
                      const EmailAndPassword(),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRagular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                          buttonText: 'Login',
                          textStyle: TextStyles.font16WhiteSemiBold,
                          onPressed: () {
                            vaildateThenDologin(context);
                          }),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: AlreadyHaveAccountText(),
                      ),
                      LoginBlocListener()
                    ],
                  ),
                ))));
  }

  void vaildateThenDologin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context
          .read<LoginCubit>()
          .emitLoginState(LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text, 
            password: context.read<LoginCubit>().passwordController.text
            ));
    }
  }
}
