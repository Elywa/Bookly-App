import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSelllerText extends StatelessWidget {
  const BestSelllerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        'Best Seller',
        style: Styles.textStyle18,
      ),
    );
  }
}
