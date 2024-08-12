import 'package:bookly_app/Features/search/presentation/views/components/search_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
           SizedBox(
            height: 15,
          ),
          SearchField(),
        ],
      ),
    );
  }
}


