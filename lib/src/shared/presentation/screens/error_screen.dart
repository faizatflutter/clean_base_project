import 'package:flutter/material.dart';
import 'package:clean_base_project/src/core/constants/app_strings.dart';

class ErrorScreen extends StatelessWidget {
  final String? errorMessage;

  const ErrorScreen({super.key, this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(errorMessage ?? AppStrings.somethingWentWrong),
      ),
    );
  }
}
