import 'package:bookly/core/functions/launch_url.dart';
import 'package:bookly/features/home%20screen/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_button.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({Key? key, required this.bookModel})
      : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          backgroundColor: Colors.white,
          text: 'Free',
          textColor: Colors.black,
          onPressed: () {},
        ),
        CustomButton(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          backgroundColor: const Color(0xffef8262),
          text: 'Preview',
          textColor: Colors.white,
          onPressed: () {
            launchCustomUrl(
              context,
              bookModel.volumeInfo.previewLink,
            );
          },
        ),
      ],
    );
  }
}