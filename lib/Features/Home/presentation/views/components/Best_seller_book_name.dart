import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookNameBestSeller extends StatelessWidget {
  const BookNameBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: Text(
        'La Case De paple',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Styles.textStyle120.copyWith(
          fontSize: 25,
        ),
      ),
    );
  }
}
