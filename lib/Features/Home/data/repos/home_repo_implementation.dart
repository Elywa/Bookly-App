import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/utils/api_services.dart';
import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple implements HomeRepo {
  final ApiServices api;

  HomeRepoImple({required this.api});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var jsonData = await api.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:programming&Sorting=newest');
      List<Map<String, dynamic>> data = jsonData['items'];

      List<BookModel> booksList = [];
      for (var item in data) {
        booksList.add(BookModel.fromJson(item));
      }

      return right(booksList);
    } on Exception catch (e) {
      return left(ServerFail());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
