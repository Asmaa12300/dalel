import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/generated/assets.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: AppColors.lightGray,
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        height: 133,

        width: 74,


      child: Column(
        children: [
          Container(
            width: 74,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only( topRight: Radius.circular(5),topLeft: Radius.circular(5)),
              image: DecorationImage(
                image: AssetImage(Assets.imagesTost2),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 11),
          Text(
            'Lionheart',
            style: CustomTextStyles.poppins500style24.copyWith(
              fontSize: 14,
              color: AppColors.deebBrown,
            ),
          ),
        ],
      ),
    );
  }
}
