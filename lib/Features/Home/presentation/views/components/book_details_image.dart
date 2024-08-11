import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage(AssetsData.listItem),
          fit: BoxFit.fill,
        ),
      ),
      height: MediaQuery.of(context).size.height * .3,
      width: MediaQuery.of(context).size.width * .4,
    );
  }
}
