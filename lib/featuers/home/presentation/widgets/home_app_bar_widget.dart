import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_strings.dart' show AppStrings;
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/generated/assets.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.imagesMenu),
        Text(
          AppStrings.Appname,
          style: CustomTextStyles.pacifico400style64.copyWith(fontSize: 22),
        ),
      ],
    );
  }
}
