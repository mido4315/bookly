import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home%20screen/data/models/book_model/book_model.dart';
import 'package:bookly/features/home%20screen/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home%20screen/presentation/views/book_details_view.dart';
import 'package:bookly/features/home%20screen/presentation/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash Screen/presentation/views/splash_view.dart';
import '../../features/home screen/data/repos/home_repo_impl.dart';
import '../../features/search screen/presentation/data/repos/search_repo_impl.dart';
import '../../features/search screen/presentation/manager/search_books_cubit/search_books_cubit.dart';
import '../../features/search screen/presentation/views/search_view.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          path: kBookDetailsView,
          builder: (context, state) {
            final arguments = state.extra as BookModel;
            return BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchSimilarBooks(
                    arguments.volumeInfo.categories?[0] ?? 'programming'),
              child: BookDetailsView(bookModel: arguments),
            );
          }),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
          child: const SearchView(),
        ),
      ),
      //      GoRoute(
      //         path: kSearchView,
      //         builder: (context, state) {
      //           final arguments = state.extra as BookModel;
      //           return BlocProvider(
      //             create: (context) => SearchBooksCubit(
      //               getIt.get<SearchRepoImpl>(),
      //             ),
      //             child: SearchView(),
      //           );
      //         },
      //       ),
    ],
  );
}
