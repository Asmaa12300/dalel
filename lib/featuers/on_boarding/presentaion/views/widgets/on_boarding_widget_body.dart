import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/featuers/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/featuers/on_boarding/presentaion/views/widgets/custom_smooth_page_indicator.dart'
    show CustomSmoothPageIndicator, CustomSmoothPageIndicator;
import 'package:flutter/material.dart';
import '../../../../../core/utils/generated/assets.dart';


class OnBoardingWidgetBody extends StatelessWidget {
   OnBoardingWidgetBody({super.key, required this.controller, this.onPageChange});
   final PageController controller;
   final Function(int)? onPageChange;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: PageView.builder(
        onPageChanged: onPageChange,
          physics: BouncingScrollPhysics(),
        controller: controller,
          itemCount: onBoardingData.length,
          itemBuilder: (context,index) {
            return Column(
              children: [
                Container(
                  height:290 ,
                  width: 343,
                  decoration:BoxDecoration(
                      image:DecorationImage(
                        image: AssetImage(
                          onBoardingData[index].imagePath,
                        ),
                          fit: BoxFit.fill
                      ),
                ),
                ),
                SizedBox(height: 24,),
                CustomSmoothPageIndicator(controller: controller),
                SizedBox(height: 32,),
                Text(
                    onBoardingData[index].title,
                  style: CustomTextStyles.poppins500style24
                  .copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 16,),
                Text(
                  onBoardingData[index].subTitle,
                  style: CustomTextStyles.poppins300style16,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            );
          }
      ),
    );
  }
}