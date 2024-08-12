import 'package:bookly_app/Features/Home/presentation/views/components/book_details_image.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: SizedBox(
                width: 90,
                child: BookDetailsImage(),
              ),
            );
          }),
    );
  }
}
