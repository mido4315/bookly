import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../manager/search_books_cubit/search_books_cubit.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          // onSubmitted: (value) {
          //   BlocProvider.of<SearchBooksCubit>(context).fetchSearchResult(value);
          // },
          onChanged: (value) {
            if (value.trim() != '') {
              BlocProvider.of<SearchBooksCubit>(context).badRequest = false;
              BlocProvider.of<SearchBooksCubit>(context)
                  .fetchSearchResult(value);
            } else {
              BlocProvider.of<SearchBooksCubit>(context).badRequest = true;
            }
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Search',
            suffixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}