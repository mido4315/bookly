part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  FeaturedBooksSuccess(this.featuredBooksS);

  final List<BookModel> featuredBooksS;
}

class FeaturedBooksFailure extends FeaturedBooksState {
  FeaturedBooksFailure(this.errorMessage);

  final String errorMessage;
}