import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/contants.dart';
import 'package:flutter/material.dart';

class AuthorName extends StatelessWidget {
  const AuthorName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: TextAlign.center,
      style: Styles.textStyle16
          .copyWith(fontFamily: kfontFamily, fontStyle: FontStyle.italic),
    );
  }
}
