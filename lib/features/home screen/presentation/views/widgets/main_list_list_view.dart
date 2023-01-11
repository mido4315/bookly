import 'package:bookly/features/home%20screen/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class MainBooksListView extends StatelessWidget {
  const MainBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 18),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookImage(
              padding: EdgeInsets.only(right: 4, left: 4));
        },
      ),
    );
  }
}
