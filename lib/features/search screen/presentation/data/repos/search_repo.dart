import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failure.dart';
import '../../../../home screen/data/models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchResult(
      String searchString);
}
