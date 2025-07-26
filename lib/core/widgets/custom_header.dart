import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key,  this.text});
final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
        text!,
      style: CustomTextStyles.poppins400style20,

    );
  }
}
