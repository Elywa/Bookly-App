import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key, 
  });
  
  @override
  Widget build(BuildContext context) {
    return  const Text(
     '4.2',
      style: Styles.textStyle16,
    );
  }
}
