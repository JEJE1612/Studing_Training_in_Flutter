import 'package:flutter/material.dart';
import 'package:flutter_complete_advanced/cores/di/dependency_injection.dart';
import 'package:flutter_complete_advanced/cores/routing/app_router.dart';
import 'package:flutter_complete_advanced/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
