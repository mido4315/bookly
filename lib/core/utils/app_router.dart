import 'package:bookly/features/home%20screen/presentation/views/book_details_view.dart';
import 'package:bookly/features/home%20screen/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Splash Screen/presentation/views/splash_view.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
