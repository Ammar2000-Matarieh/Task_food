import 'package:flutter/material.dart';
import 'package:food_tek_app/controllers/on_boarding_controller.dart';
import 'package:food_tek_app/view/screens/custom_list.dart';
import 'package:provider/provider.dart';
import 'package:food_tek_app/model/onboarding_model.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingProvider = context.read<OnboardingController>();
    onBoardingProvider.onInitController();
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),

      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: onBoardingProvider.pageController,
              onPageChanged: (index) {
                onBoardingProvider.screensChanged(index);
              },
              itemCount: onBoardingList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(height: 100),
                    Image.asset(
                      onBoardingList[index].image,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 30),
                    Text(
                      textAlign: TextAlign.center,
                      onBoardingList[index].title,
                      style: Theme.of(context).textTheme.headlineMedium!
                          .copyWith(fontSize: 32, color: Color(0xff455A64)),
                    ),
                    SizedBox(height: 25),
                    Text(
                      onBoardingList[index].body,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Color(0xff455A64),
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          CustomOnBoardingList(onBoardingProvider: onBoardingProvider),
        ],
      ),
    );
  }
}
