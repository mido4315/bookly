import 'package:bookly/features/home%20screen/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/widgets/custom_error.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import 'custom_book_image.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 26),
              itemCount: state.newestBooksS.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  padding: const EdgeInsets.only(right: 4, left: 4),
                  imageUrl: state.newestBooksS[index].volumeInfo.imageLinks
                          ?.thumbnail ??
                      AssetsData.imageNotFound,
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return Center(
            child: CustomErrorMessage(errorMessage: state.errorMessage),
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}