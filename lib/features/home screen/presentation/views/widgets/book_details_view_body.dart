import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_details_button.dart';
import 'book_details_list_view.dart';
import 'book_main_details.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBookDetailsAppBar(),
              BookMainDetails(
                bookModel: bookModel,
              ),
              const SizedBox(
                height: 38,
              ),
               BookDetailsButton(bookModel: bookModel,),
              const Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26, bottom: 13),
                child: Text(
                  'You can also like',
                  style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const BookDetailsListView(),
              const SizedBox(
                height: 22,
              )
            ],
          ),
        )
      ],
    );
  }
}