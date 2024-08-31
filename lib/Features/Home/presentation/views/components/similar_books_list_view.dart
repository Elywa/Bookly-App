import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/book_details_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
      if (state is SimilarBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .17,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SizedBox(
                    width: 90,
                    child: BookDetailsImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,),
                  ),
                );
              }),
        );
      } else if (state is SimilarBooksFailure) {
        return Center(
          child: Text(
            state.errMessage,
            textAlign: TextAlign.center,
            style: Styles.textStyle120,
          ),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
