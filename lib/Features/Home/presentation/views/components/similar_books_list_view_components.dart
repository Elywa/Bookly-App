import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksListViewComponents extends StatelessWidget {
  const SimilarBooksListViewComponents({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 15,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
