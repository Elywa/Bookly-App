import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/components/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.booksList.length,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: FeaturedListItem(imageUrl: state.booksList[index].volumeInfo.imageLinks.thumbnail  , book: state.booksList[index],),
                    );
                  }),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(
            child: Text(
              state.errorMessage,
              style: Styles.textStyle120,
            ),
          );
        } else if (state is FeaturedBooksLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return const Center(
          child: Text(
            'Something went Wrong, try again later ',
            style: Styles.textStyle120,
          ),
        );
      },
    );
  }
}
