import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key,  this.color, required this.text,  this.onPressed});
  final Color? color;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
          onPressed: onPressed,
        style:ElevatedButton.styleFrom(
          backgroundColor: color?? AppColors.primarycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
          child: Text(
            text,
            style:
            CustomTextStyles.poppins500style24
                .copyWith(fontSize: 18,
            color: AppColors.offwhite,
            ),

          ),
      ),
    );
  }
}
