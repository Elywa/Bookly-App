import 'package:bookly_app/Features/Home/presentation/views/components/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: FeaturedListItem(),
              );
            }),
      ),
    );
  }
}
