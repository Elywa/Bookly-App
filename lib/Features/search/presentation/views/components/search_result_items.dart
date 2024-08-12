import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class SearchResultItems extends StatelessWidget {
  const SearchResultItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: BestSellerItem(),
            );
          }),
    );
  }
}
