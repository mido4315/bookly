import 'package:bookly/features/home%20screen/manger/featured_Books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home%20screen/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/widgets/custom_error.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';

class MainBooksListView extends StatelessWidget {
  const MainBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 18),
              itemCount: state.featuredBooksS.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBookDetailsView,
                      extra: state.featuredBooksS[index],
                    );
                  },
                  child: CustomBookImage(
                    padding: const EdgeInsets.only(right: 4, left: 4),
                    imageUrl: state.featuredBooksS[index].volumeInfo.imageLinks
                            ?.thumbnail ??
                        AssetsData.imageNotFound,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(
            errorMessage: state.errorMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
