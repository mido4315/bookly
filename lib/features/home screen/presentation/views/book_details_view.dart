import 'package:bookly/features/home%20screen/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

import '../../data/models/book_model/book_model.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(
        bookModel: bookModel,
      ),
    );
  }
}