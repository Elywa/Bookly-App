import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookPrice extends StatelessWidget {
  const BookPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Free',
      style: Styles.textStyle120,
    );
  }
}
