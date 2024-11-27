import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/Best_seller_book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/author_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_details_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_rating.dart';

import 'package:bookly_app/Features/Home/presentation/views/components/rating_icon.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/rating_people.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsComponents extends StatelessWidget {
  const BookDetailsComponents({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(
        //   height: 25,
        // ),
        BookDetailsImage(
          imageUrl: book.volumeInfo.imageLinks.thumbnail,
        ),
        const SizedBox(
          height: 30,
        ),
        BookNameBestSeller(
          bookName: book.volumeInfo.title ?? 'UnKnown',
        ),
        const SizedBox(
          height: 15,
        ),
        AuthorName(
          name: book.volumeInfo.authors![0],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingIcon(),
            BookRating(),
            SizedBox(
              width: 8,
            ),
            RatingPeople(),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
