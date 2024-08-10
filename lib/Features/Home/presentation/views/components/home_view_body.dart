import 'package:bookly_app/Features/Home/presentation/views/components/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/custom_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedListView(),
      ],
    );
  }
}

