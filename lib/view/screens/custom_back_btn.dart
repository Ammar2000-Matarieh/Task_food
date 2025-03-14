import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_tek_app/controllers/on_boarding_controller.dart';
import 'package:provider/provider.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingProvider = context.read<OnboardingController>();
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      width: double.infinity,
      height: 30,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          side: BorderSide(color: Colors.grey.shade500, width: 0.3),
        ),
        onPressed: () {
          if (onBoardingProvider.currentScreen > 0) {
            onBoardingProvider.buttonBack(context);
            log("Back");
            // Return to the previous page
          }
        },
        child: Text(
          "Skip",
          style: Theme.of(
            context,
          ).textTheme.labelLarge!.copyWith(color: Colors.black, fontSize: 12),
        ),
      ),
    );
  }
}
