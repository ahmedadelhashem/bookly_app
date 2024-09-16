import 'package:book/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookrating extends StatelessWidget {
  const Bookrating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
       const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffDD4f),
          size: 15,
        ),
       const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: style.textStyle16,
        ),
       const SizedBox(
          width: 4,
        ),
        Opacity(
            opacity: .5,
            child: Text(
              '($count)',
              style: style.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}
