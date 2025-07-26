import 'package:flutter/material.dart';
import '../../../../core/utils/generated/assets.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: 235,
      child: Image.asset(Assets.imagesFrame4,

      ),
    );
  }
}
