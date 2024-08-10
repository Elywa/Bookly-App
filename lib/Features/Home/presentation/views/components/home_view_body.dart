import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/custom_app_bar.dart';

import 'package:bookly_app/Features/Home/presentation/views/components/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedListView(),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ),
      ],
    );
  }
}
