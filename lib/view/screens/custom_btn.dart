import 'package:flutter/material.dart';
import 'package:food_tek_app/controllers/on_boarding_controller.dart';
import 'package:provider/provider.dart';

class CustomButtonOnBoarding extends StatelessWidget {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingProvider = context.read<OnboardingController>();
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      width: double.infinity,
      height: 30,
      child: IconButton(
        icon: Icon(Icons.arrow_forward, color: Colors.green),
        onPressed: () {
          if (onBoardingProvider.currentScreen == 2) {
            onBoardingProvider.buttonNext(context);
          } else {
            onBoardingProvider.pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        },
      ),
    );
  }
}
