import 'package:flutter/material.dart';
import 'package:food_tek_app/controllers/on_boarding_controller.dart';
import 'package:food_tek_app/view/screens/splash_screen.dart';
import 'package:provider/provider.dart';

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnboardingController(),
          lazy: true,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
