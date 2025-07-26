import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/generated/assets.dart';

class PeriodDetailsWidget extends StatelessWidget {
  const PeriodDetailsWidget({super.key,required this.text,required this.image});
  final  String text ;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 164,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.offwhite,
        boxShadow: [BoxShadow(
          color: AppColors.lightGray,
          blurRadius: 10,
          offset: Offset(0, 7),

        )]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 16),
          SizedBox(
            height: 48,
            width: 63,
            child: Text(
              'Ancient Egypt',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: CustomTextStyles.poppins500style18.copyWith(
                fontSize: 16,
                color: AppColors.deebBrown,
              ),
            ),
          ),
          SizedBox(width: 16),

          Container(
            height: 64,
            width: 47,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(image)),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
