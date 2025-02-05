import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_advanced/cores/helpers/app_regex.dart';
import 'package:flutter_complete_advanced/cores/helpers/spacing.dart';
import 'package:flutter_complete_advanced/cores/widgets/app_text_form_field.dart';
import 'package:flutter_complete_advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_complete_advanced/features/login/ui/widgets/password_vaildation.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  late TextEditingController passwordController;
  bool isOscuretext = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecailCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecailCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            AppTextFormField(
              hintText: 'Email',
              vailder: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return "please enter a valid email ";
                }
              },
              controller: context.read<LoginCubit>().emailController,
            ),
            verticalSpace(18),
            AppTextFormField(
              controller: context.read<LoginCubit>().passwordController,
              hintText: 'Password',
              isObscureText: isOscuretext,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isOscuretext = !isOscuretext;
                  });
                },
                child: Icon(
                  isOscuretext ? Icons.visibility_off : Icons.visibility,
                ),
              ),
              vailder: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a vaild password";
                }
              },
            ),
            verticalSpace(24),
            PasswordVaildation(
              hasLowerCase: hasLowerCase,
              hasUpperCase: hasUpperCase,
              hasSpecaiLCharacters: hasSpecailCharacter,
              hasNumber: hasNumber,
              hasMinLength: hasNumber,
            )
          ],
        ));
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
