import 'package:bookly_app/Core/utils/app_routes.dart';
import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/Best_seller_book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/author_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_price_and_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksItem extends StatelessWidget {
  const NewestBooksItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsroute , extra: book);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .20,
          child: Row(
            children: [
              BestSellerListViewItemImage(
                imageUrl: book.volumeInfo.imageLinks.thumbnail,
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8, top: 3, bottom: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BookNameBestSeller(
                        bookName: book.volumeInfo.title!,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      AuthorName(name: book.volumeInfo.authors!.first,),
                      BookPriceAndRating(rate: book.volumeInfo.maturityRating! ,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
