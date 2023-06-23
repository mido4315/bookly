part of 'search_books_cubit.dart';

@immutable
abstract class SearchBooksState {}

class SearchBooksInitial extends SearchBooksState {}

class SearchBooksLoading extends SearchBooksState {}

class SearchBooksSuccess extends SearchBooksState {
  SearchBooksSuccess(this.searchBooks);
  final List<BookModel> searchBooks;
}

class SearchBooksFailure extends SearchBooksState {
  SearchBooksFailure(this.errorMessage);
  final String errorMessage;
}
