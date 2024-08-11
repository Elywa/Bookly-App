import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/custom_button.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/Best_seller_book_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/author_name.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_details_image.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_details_view_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/rating_icon.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/rating_people.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BookDetailsViewAppBar(),
          SizedBox(
            height: 25,
          ),
          BookDetailsImage(),
          SizedBox(
            height: 30,
          ),
          BookNameBestSeller(),
          SizedBox(
            height: 15,
          ),
          AuthorName(),
          Row(
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
          SizedBox(
            height: 25,
          ),
          BooksActionButton(),
        ],
      ),
    );
  }
}

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomButton(
          text: '100 \$',
          backgroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        CustomButton(
          text: 'Free Preview',
          backgroundColor: Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        )
      ],
    );
  }
}
