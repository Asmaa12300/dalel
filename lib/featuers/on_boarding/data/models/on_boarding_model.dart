import 'package:dalel/core/utils/generated/assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
      imagePath: Assets.imagesFrame1,
      title: 'Explore The history with Dalel in a smart way',
      subTitle: 'Using our app’s history libraries you can find many historical periods',
  ),
  OnBoardingModel(
      imagePath: Assets.imagesFrame2,
      title: 'From every place on earth',
      subTitle: 'A big variety of ancient places from all over the world',
  ),
  OnBoardingModel(
      imagePath: Assets.imagesFrame3,
      title: 'Using modern AI technology for better user experience',
      subTitle: 'AI provide recommendations and helps you to continue the search journey',
  ),
];
