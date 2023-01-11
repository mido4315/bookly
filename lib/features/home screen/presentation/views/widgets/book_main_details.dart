import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookMainDetails extends StatelessWidget {
  const BookMainDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: const CustomBookImage(
              padding: EdgeInsets.only(right: 4, left: 4)),
        ),
        const SizedBox(
          height: 39,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 9,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        const BookRating(),
      ],
    );
  }
}
