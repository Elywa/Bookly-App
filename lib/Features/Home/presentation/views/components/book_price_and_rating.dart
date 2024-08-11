import 'package:bookly_app/Features/Home/presentation/views/components/Rating_Icon.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_price.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/rating_people.dart';
import 'package:flutter/material.dart';

class BookPriceAndRating extends StatelessWidget {
  const BookPriceAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BookPrice(),
        Spacer(),
        RatingIcon(),
        BookRating(),
         SizedBox(
          width: 6,
        ),
        RatingPeople()
      ],
    );
  }
}
