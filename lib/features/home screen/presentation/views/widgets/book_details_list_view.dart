import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 26),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookImage(
            padding: EdgeInsets.only(right: 4, left: 4),
            imageUrl:
                'https://m.media-amazon.com/images/M/MV5BYTU3NWI5OGMtZmZhNy00MjVmLTk1YzAtZjA3ZDA3NzcyNDUxXkEyXkFqcGdeQXVyODY5Njk4Njc@._V1_.jpg',
          );
        },
      ),
    );
  }
}
