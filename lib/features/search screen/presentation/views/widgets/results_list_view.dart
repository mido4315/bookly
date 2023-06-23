import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_error.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../../../home screen/presentation/views/widgets/best_seller_list_view_item.dart';
import '../../manager/search_books_cubit/search_books_cubit.dart';

class ResultsListView extends StatelessWidget {
  const ResultsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          if (BlocProvider.of<SearchBooksCubit>(context).badRequest == false) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: state.searchBooks.length,
                (context, index) {
                  return NewestListViewItem(
                    bookModel: state.searchBooks[index],
                  );
                },
              ),
            );
          } else {
            return const SliverToBoxAdapter(
              child: CustomLoadingIndicator(),
            );
          }
        } else if (state is SearchBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorMessage(errorMessage: state.errorMessage),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
