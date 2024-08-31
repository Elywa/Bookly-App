import 'package:bookly_app/Core/utils/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomButton(
          text: 'Free',
          backgroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        CustomButton(
          text: 'Preview',
          backgroundColor: Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        )
      ],
    );
  }
}
