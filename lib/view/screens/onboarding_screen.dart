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
          SizedBox(height: 20),
          onBoardingList.length == 4
              ? Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      gradient: LinearGradient(
                        colors: [Color(0xff25AE4B), Color(0xff0F481F)],
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "yes, turn it on",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 40, right: 40),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffC2C2C2),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "cancel",
                          style: TextStyle(
                            color: Color(0xff455A64),
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
              : Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  gradient: LinearGradient(
                    colors: [Color(0xff25AE4B), Color(0xff0F481F)],
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "continue",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
          SizedBox(height: 20),
          CustomOnBoardingList(onBoardingProvider: onBoardingProvider),
        ],
      ),
    );
  }
}
