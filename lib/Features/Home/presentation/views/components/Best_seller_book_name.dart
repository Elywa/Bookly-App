import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookNameBestSeller extends StatelessWidget {
  const BookNameBestSeller({
    super.key,
    required this.bookName,
  });
  final String bookName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: Text(
        bookName,
        textAlign: TextAlign.start,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Styles.textStyle120.copyWith(
          fontSize: 20,
          color: Colors.green
        ),
      ),
    );
  }
}
