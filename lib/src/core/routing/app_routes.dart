import 'package:flutter/material.dart';
import 'package:clean_base_project/src/core/constants/app_strings.dart';
import 'package:clean_base_project/src/features/habit_tracker/presentation/screens/habit_list_screen.dart';
import 'package:clean_base_project/src/shared/presentation/screens/error_screen.dart';
import 'package:clean_base_project/src/shared/presentation/screens/intro_screen.dart';

class AppRoutes {
  static const introScreen = '/introScreen';
  static const habitListScreen = '/habitListScreen';
  static const errorScreen = '/errorScreen';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case introScreen:
        return MaterialPageRoute(
          builder: (_) => const IntroScreen(),
          settings: settings,
        );

      case habitListScreen:
        return MaterialPageRoute(
          builder: (_) => const HabitListScreen(),
          settings: settings,
        );

      case errorScreen:
        return MaterialPageRoute(
          builder: (_) => const ErrorScreen(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => ErrorScreen(
            errorMessage: "${AppStrings.noRouteDefinedFor} ${settings.name}",
          ),
        );
    }
  }
}
