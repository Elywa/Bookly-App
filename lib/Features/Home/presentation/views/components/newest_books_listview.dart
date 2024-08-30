import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/manager/newest_books_cubit/newest_books_cubit_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksCubitFailure) {
          return Center(
            child: Text(
              state.errMessage,
              style: Styles.textStyle120,
            ),
          );
        } else if (state is NewestBooksCubitSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.booksList.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 10),
                  child: NewestBooksItem(book: state.booksList[index],),
                );
              });
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
