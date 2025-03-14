class OnboardingModel {
  final String image;
  final String title;
  final String body;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

List<OnboardingModel> onBoardingList = [
  OnboardingModel(
    image: "assets/images/Order food-pana 1.png",
    title: "welcome to sahlah",
    body: "enjoy a fast and smooth food delivery\n at your doorstep",
  ),
  OnboardingModel(
    image: "assets/images/Take Away-cuate 1 .png",
    title: "get delivery on time",
    body:
        "order your favorite food within the plam\n of your hand and the zone\n of your comfort",
  ),
  OnboardingModel(
    image: "assets/images/Take Away-cuate 1 .png",
    title: "choose your food",
    body:
        "order your favorite food within the plam\n of your hand and the zone\n of your comfort",
  ),
  OnboardingModel(
    image: "assets/images/Take Away-cuate 1 .png",
    title: "turn on your location",
    body:
        "to continues, let your device turn\n on location, which uses google’s\n location service",
  ),
];
