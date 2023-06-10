import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookMainDetails extends StatelessWidget {
  const BookMainDetails({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: CustomBookImage(
              padding: const EdgeInsets.only(right: 4, left: 4),
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??
                  AssetsData.imageNotFound,
            ),
          ),
          const SizedBox(
            height: 39,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              bookModel.volumeInfo.title ?? 'Can\'t find book\'s name',
              style: Styles.textStyle30,
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          Opacity(
            opacity: 0.5,
            child: Text(
              bookModel.volumeInfo.authors?[0] ?? 'Can\'t find author\'s name',
              style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          BookRating(
            ratingCount: bookModel.volumeInfo.ratingsCount,
            ratingAverage: bookModel.volumeInfo.averageRating,
          ),
        ],
      ),
    );
  }
}