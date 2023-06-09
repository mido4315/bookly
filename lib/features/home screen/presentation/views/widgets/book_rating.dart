import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    required this.ratingCount,
    required this.ratingAverage,
  }) : super(key: key);
  final int? ratingCount;
  final double? ratingAverage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 15,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '${ratingAverage ?? 0}',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(${ratingCount ?? 0})',
            style: Styles.textStyle14,
          ),
        ),
        const SizedBox(
          width: 17,
        ),
      ],
    );
  }
}
