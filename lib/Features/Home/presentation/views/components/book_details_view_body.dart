import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/custom_button.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/Best_seller_book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/author_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_details_conponents.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_details_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_details_view_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/books_action_button.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/rating_icon.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/rating_people.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/similar_books_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/similar_books_list_view_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const BookDetailsViewAppBar(),
                BookDetailsComponents(
                  book: book,
                ),
                const BooksActionButton(),
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SimilarBooksListViewComponents(
                  book: book,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
