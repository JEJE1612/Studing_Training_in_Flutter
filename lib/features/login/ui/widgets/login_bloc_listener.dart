import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_advanced/cores/helpers/extensions.dart';
import 'package:flutter_complete_advanced/cores/routing/routes.dart';
import 'package:flutter_complete_advanced/cores/theming/colors.dart';
import 'package:flutter_complete_advanced/cores/theming/styles.dart';
import 'package:flutter_complete_advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_complete_advanced/features/login/logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (current, state) {
        state.whenOrNull(loading: () {
          showDialog(
              context: context,
              builder: (context) => const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainBlue,
                    ),
                  ));
        }, success: (loginResponse) {
          context.pop();
          context.pushNamed(Routes.homeScreen);
        }, error: (error) {
          context.pop();
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    icon: Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 32,
                    ),
                    content: Text(
                      error,
                      style: TextStyles.font15DarkBlureMeduim,
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child:Text(
                            'Got it ',
                            style: TextStyles.font14BlueSemiBold,
                          ) )
                    ],
                  ));
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
