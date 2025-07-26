import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import '../widgets/home_sections/app_bar_section.dart';
import '../widgets/home_sections/historical_characters_section.dart';
import '../widgets/home_sections/historical_periods_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: AppBarSection(),),
            SliverToBoxAdapter(child: HistoricalPeriodsSection(),),
            SliverToBoxAdapter(child: HistoricalCharactersSection(),),

            SliverToBoxAdapter(
              child: CustomHeader(text: AppStrings.wars),
            ),
          ],
        ),
      ),
    );
  }
}




