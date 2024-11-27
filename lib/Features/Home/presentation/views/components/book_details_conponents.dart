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
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(book.volumeInfo.title ?? 'UnKnown',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color.fromARGB(255, 13, 175, 37),
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Zilla Slab',
              )),
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
      ],
    );
  }
}
