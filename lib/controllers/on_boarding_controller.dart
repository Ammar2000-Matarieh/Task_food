import 'package:flutter/material.dart';
import 'package:food_tek_app/model/onboarding_model.dart';

class OnboardingController extends ChangeNotifier {
  late PageController pageController;
  int currentScreen = 0;
  // void completeOnboarding() async {
  //   // حفظ حالة الـ Onboarding بأنها مكتملة
  //   // await preferences.setBool(AppConstants.isOnboardingCompletedKey, true);
  //   notifyListeners();
  // }

  void onInitController() {
    pageController = PageController();
    pageController.addListener(() {
      currentScreen = pageController.page!.toInt();
      notifyListeners();
    });
  }

  void buttonNext(BuildContext context) {
    currentScreen++;

    if (currentScreen >= onBoardingList.length - 1) {
      // Navigator.of(context).pushReplacementNamed('LoginScreen');
    } else {
      pageController.animateToPage(
        currentScreen,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
    notifyListeners();
  }

  void buttonBack(BuildContext context) {
    if (currentScreen > 0) {
      currentScreen--;
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    notifyListeners();
  }

  void screensChanged(int index) {
    currentScreen = index;
    notifyListeners();
  }
}
