import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home%20screen/data/models/book_model/book_model.dart';
import 'package:bookly/features/home%20screen/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);

  final APIService apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      List<BookModel> newestBooks = [];
      var newestBooksData = await apiService.get(
        path:
        'volumes?Filtering=free-ebooks&q=computer science',
      );
      for (var book in newestBooksData['items']) {
        newestBooks.add(BookModel.fromJson(book));
      }
      return right(newestBooks);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(ServerFailure(
          e.toString(),
        ));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      List<BookModel> featuredBooks = [];
      var featuredBooksData = await apiService.get(
        path: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming',
      );
      for (var book in featuredBooksData['items']) {
        featuredBooks.add(BookModel.fromJson(book));
      }
      return right(featuredBooks);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(ServerFailure(
          e.toString(),
        ));
      }
    }
  }
}
