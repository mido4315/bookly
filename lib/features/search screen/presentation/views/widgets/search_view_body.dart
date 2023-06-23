import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_bar.dart';
import 'results_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          CustomSearchBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 37.0, left: 18, bottom: 20),
              child: Text('Search Results', style: Styles.textStyle18),
            ),
          ),
          ResultsListView(),
        ],
      ),
    );
  }
}
