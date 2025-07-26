import 'package:flutter/material.dart';
import '../core/routes/app_router.dart';
import '../core/utils/app_colors.dart';

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.offwhite,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

