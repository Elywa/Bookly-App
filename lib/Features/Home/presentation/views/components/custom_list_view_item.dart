import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .35,
      height: MediaQuery.of(context).size.height * .25,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage(AssetsData.listItem),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
