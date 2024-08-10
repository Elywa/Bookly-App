import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_sellrer_text.dart';
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
        BestSelllerText(),
        SizedBox(
          height: 30,
        ),
        BestSellerItem(),
      ],
    );
  }
}

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 175,
        child: Row(
          children: [
            Image.asset(AssetsData.listItem),
          ],
        ),
      ),
    );
  }
}
