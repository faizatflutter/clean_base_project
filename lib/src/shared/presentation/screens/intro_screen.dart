import 'dart:async';

import 'package:clean_base_project/src/core/constants/app_strings.dart';
import 'package:clean_base_project/src/core/extensions/context_extensions.dart';
import 'package:clean_base_project/src/core/extensions/widget_extensions.dart';
import 'package:clean_base_project/src/core/routing/app_routes.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    scheduleMicrotask(() {
      Future.delayed(const Duration(seconds: 2), () {
        context.navigateAndReplaceWithName(AppRoutes.habitListScreen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator().withPaddingAll(),
            const Text(AppStrings.loadingHabits, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
