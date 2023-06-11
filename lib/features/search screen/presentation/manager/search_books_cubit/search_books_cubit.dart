import 'package:bloc/bloc.dart';
import 'package:bookly/features/search%20screen/presentation/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

import '../../../../home screen/data/models/book_model/book_model.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;
  bool badRequest = false;

  Future<void> fetchSearchResult(String searchString) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchResult(searchString);

    result.fold((failure) => emit(SearchBooksFailure(failure.errorMessage)),
        (books) => emit(SearchBooksSuccess(books)));
  }
}