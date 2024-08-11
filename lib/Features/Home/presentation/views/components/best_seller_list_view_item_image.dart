import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItemImage extends StatelessWidget {
  const BestSellerListViewItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(AssetsData.listItem),
    );
  }
}