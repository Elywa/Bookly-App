import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .3,
      child: AspectRatio(
        aspectRatio: .6, //يعني العرض نص الطول  نسبة العرض بالنسبه للطول
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(AssetsData.listItem),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
