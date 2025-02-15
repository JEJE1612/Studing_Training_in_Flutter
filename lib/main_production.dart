import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_advanced/cores/di/dependency_injection.dart';
import 'package:flutter_complete_advanced/cores/routing/app_router.dart';
import 'package:flutter_complete_advanced/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  setupGetIt();

  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
