import 'package:flutter_complete_advanced/cores/networking/api_error_handler.dart';
import 'package:flutter_complete_advanced/cores/networking/api_result.dart';
import 'package:flutter_complete_advanced/cores/networking/api_service.dart';
import 'package:flutter_complete_advanced/features/login/data/models/login_request_body.dart';
import 'package:flutter_complete_advanced/features/login/data/models/login_response.dart';

class LoginRespo {
  final ApiService _apiService;
  LoginRespo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final respose = await _apiService.login(loginRequestBody as Map<String, dynamic>);
      return ApiResult.success(respose as LoginResponse);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(Error));
    }
  }
}
