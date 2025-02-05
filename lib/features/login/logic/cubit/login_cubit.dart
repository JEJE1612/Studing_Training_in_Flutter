import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/networking/api_result.dart';
import 'package:flutter_complete_advanced/features/login/data/models/login_request_body.dart';
import 'package:flutter_complete_advanced/features/login/data/models/login_response.dart';
import 'package:flutter_complete_advanced/features/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginResponse _loginRespo;
  LoginCubit(this._loginRespo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();  
  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRespo.login(loginRequestBody);
    response.when(success: (loginRespose) {
      emit(LoginState.success(loginRespose));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
