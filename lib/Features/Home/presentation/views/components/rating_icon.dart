import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class RatingIcon extends StatelessWidget {
  const RatingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        FontAwesomeIcons.solidStar,
        color: Color(0xffFFDD4F),
        size: 20,
      ),
    );
  }
}