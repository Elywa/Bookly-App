import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/contants.dart';
import 'package:flutter/material.dart';

class AuthorName extends StatelessWidget {
  const AuthorName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ahmed Eliwa',
      style: Styles.textStyle14.copyWith(fontFamily: kfontFamily),
    );
  }
}
