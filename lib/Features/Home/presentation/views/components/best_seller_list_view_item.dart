import 'package:bookly_app/Features/Home/presentation/views/components/Best_seller_book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/author_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_price_and_rating.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            BestSellerListViewItemImage(),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 8, top: 3, bottom: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BookNameBestSeller(),
                    SizedBox(
                      height: 3,
                    ),
                    AuthorName(),
                    BookPriceAndRating()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
