import 'package:bookly_app/Features/Home/presentation/views/components/Best_seller_book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/author_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_details_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/rating_icon.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/rating_people.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsComponents extends StatelessWidget {
  const BookDetailsComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 25,
        ),
        BookDetailsImage(),
        SizedBox(
          height: 30,
        ),
        // BookNameBestSeller(),
        SizedBox(
          height: 15,
        ),
        // AuthorName(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingIcon(),
           // BookRating(),
            SizedBox(
              width: 8,
            ),
           // RatingPeople(),
          ],
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
