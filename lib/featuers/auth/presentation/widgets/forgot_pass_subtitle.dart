import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart' show AppStrings;
import '../../../../core/utils/app_text_styles.dart' show CustomTextStyles;

class ForgotPassSubTitle extends StatelessWidget {
  const ForgotPassSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: Text(AppStrings.registerattheemail,
        style: CustomTextStyles.poppins400style12.copyWith(fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
