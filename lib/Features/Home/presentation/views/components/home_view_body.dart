import 'package:bookly_app/Features/Home/presentation/views/components/Best_seller_book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/author_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_sellrer_text.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_price_and_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/custom_app_bar.dart';

import 'package:bookly_app/Features/Home/presentation/views/components/featured_list_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedListView(),
              SizedBox(
                height: 15,
              ),
              BestSelllerText(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSellerItem(),
          );
        });
  }
}
