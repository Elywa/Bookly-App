import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/search/presentation/views/components/search_field.dart';
import 'package:bookly_app/Features/search/presentation/views/components/search_result_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          SearchField(),
          SizedBox(
            height: 15,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 15,
          ),
          SearchResultItems(),
        ],
      ),
    );
  }
}
