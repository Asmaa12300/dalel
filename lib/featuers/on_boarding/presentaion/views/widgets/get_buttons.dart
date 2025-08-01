import 'package:dalel/featuers/on_boarding/presentaion/views/functions/on_boarding.dart';
import 'package:flutter/material.dart';
import '../../../../../core/functions/navigation.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_bottom.dart';
import '../../../data/models/on_boarding_model.dart';


class GetButtons extends StatelessWidget {
  const GetButtons({
    super.key,
    required this.currentIndex,
    required this.controller,
  });

  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomBottom(
            text: AppStrings.createAccount,
            onPressed: () {
              onBoardingVisited();
              customReplacementNavigate(context, '/signUp');
            },
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              onBoardingVisited();
              customReplacementNavigate(context, '/signIn');
            },
            child: Text(
              AppStrings.loginNow,
              style: CustomTextStyles.poppins300style16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      );
    } else {
      return CustomBottom(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: Duration(milliseconds: 200),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}