import 'package:flutter/material.dart';

import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../custome_historical_characters/custom_category_list_view.dart';

class HistoricalCharactersSection extends StatelessWidget {
  const HistoricalCharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeader(text: AppStrings.historicalCharacters),
        SizedBox(height: 32),
        CustomCategoryListView(),
        SizedBox(height: 32),
      ],
    );
  }
}
