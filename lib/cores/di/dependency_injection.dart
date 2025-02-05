import 'package:dio/dio.dart';
import 'package:flutter_complete_advanced/cores/networking/api_service.dart';
import 'package:flutter_complete_advanced/cores/networking/dio_factory.dart';
import 'package:flutter_complete_advanced/features/login/data/repos/login_repo.dart';
import 'package:flutter_complete_advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService 
  Dio dio = await DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(()=>ApiService(dio));

  // login 
  getit.registerLazySingleton<LoginRespo>(()=> LoginRespo(getit()));
   getit.registerLazySingleton<LoginCubit>(()=> LoginCubit(getit()));
  
}
