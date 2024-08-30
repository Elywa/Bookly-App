import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/Best_seller_book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/author_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_sellrer_text.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_price_and_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/custom_app_bar.dart';

import 'package:bookly_app/Features/Home/presentation/views/components/featured_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/newest_books_listview.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: NewestBooksListView(),
        ),
      ],
    );
  }
}
