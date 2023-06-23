import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_error.dart';
import '../../../../../core/utils/widgets/custom_loading_indicator.dart';
import '../../../manger/newest_books_cubit/newest_books_cubit.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.newestBooksS.length,
              (context, index) {
                return NewestListViewItem(
                  bookModel: state.newestBooksS[index],
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
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

//   ListView.builder(
//   padding: EdgeInsets.zero,
//   physics: const NeverScrollableScrollPhysics(),
//   itemCount: 10,
//   scrollDirection: Axis.vertical,
//   itemBuilder: (context, index) {
//     return const BestSellerListViewItem();
//   },
// );
