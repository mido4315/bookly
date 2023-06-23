part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  SimilarBooksSuccess(this.newestBooksS);

  final List<BookModel> newestBooksS;
}

class SimilarBooksFailure extends SimilarBooksState {
  SimilarBooksFailure(this.errorMessage);

  final String errorMessage;
}
