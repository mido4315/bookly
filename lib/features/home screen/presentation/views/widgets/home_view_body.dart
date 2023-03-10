import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'main_list_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              MainBooksListView(),
              Padding(
                padding: EdgeInsets.only(top: 37.0, left: 18, bottom: 20),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        const BestSellerListView(),
      ],
    );

    //   Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: const [
    //     CustomAppBar(),
    //     MainBooksListView(),
    //     Padding(
    //       padding: EdgeInsets.only(top:37.0,left: 18,bottom: 20),
    //       child: Text('Best Seller',style: Styles.textStyle18),
    //     ),
    //     BestSellerListView(),
    //   ],
    // );
  }
}
