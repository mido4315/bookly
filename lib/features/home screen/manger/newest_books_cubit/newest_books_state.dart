part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}
class NewestBooksSuccess extends NewestBooksState {
  NewestBooksSuccess(this.featuredBooksS);

  final List<BookModel> featuredBooksS;
}
class NewestBooksFailure extends NewestBooksState {
  NewestBooksFailure(this.errorMessage);

  final String errorMessage;
}




