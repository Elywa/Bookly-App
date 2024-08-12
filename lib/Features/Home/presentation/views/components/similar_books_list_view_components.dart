import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksListViewComponents extends StatelessWidget {
  const SimilarBooksListViewComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
