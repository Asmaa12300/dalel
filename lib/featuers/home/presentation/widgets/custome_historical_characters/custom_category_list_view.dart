import 'package:flutter/material.dart';

import 'category_list_view.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 133,
      child: ListView.separated(
          clipBehavior: Clip.none,
          physics: BouncingScrollPhysics(),

          separatorBuilder: (context,index){
            return const SizedBox(width: 16,);
          },
          itemBuilder: (_,index){
            return CategoryListView();
          },
          scrollDirection: Axis.horizontal,
          itemCount: 6),

    );
  }
}
