import 'package:flutter/material.dart';

import '../../../../home screen/presentation/views/widgets/best_seller_list_view_item.dart';

class ResultsListView extends StatelessWidget {
  const ResultsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 22,
        (context, index) {
         // return const BestSellerListViewItem();
        },
      ),
    );
  }
}
