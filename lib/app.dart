import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getfit/features/authentication/screens/onboarding/onboarding.dart';
import 'package:getfit/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
