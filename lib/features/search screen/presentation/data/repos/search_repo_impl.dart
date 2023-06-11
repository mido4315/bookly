import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home%20screen/data/models/book_model/book_model.dart';
import 'package:bookly/features/search%20screen/presentation/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/utils/api_service.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl(this.apiService);

  APIService apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchResult(
      String searchString) async {
    try {
      List<BookModel> relevanceBooks = [];
      var relevanceBooksData = await apiService.get(
          path:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=$searchString');
      for (var book in relevanceBooksData['items']) {
        try {
          relevanceBooks.add(BookModel.fromJson(book));
        } catch (e) {
          continue;
        }
      }
      return Right(relevanceBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}