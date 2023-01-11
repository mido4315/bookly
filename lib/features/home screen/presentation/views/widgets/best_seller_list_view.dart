import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 22,
        (context, index) {
          return const BestSellerListViewItem();
        },
      ),
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
