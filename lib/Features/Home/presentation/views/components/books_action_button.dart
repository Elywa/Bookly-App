import 'package:bookly_app/Core/utils/custom_button.dart';
import 'package:bookly_app/Core/utils/functions.dart';
import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomButton(
          text: 'Free',
          backgroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        CustomButton(
          onTap: () async {
            Uri uri = Uri.parse(book.volumeInfo.previewLink!);
            if (await canLaunchUrl(uri)) {
              launchUrl(uri);
            }
          },
          text: 'Preview',
          backgroundColor: const Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        )
      ],
    );
  }
}
