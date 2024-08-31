import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/utils/api_services.dart';
import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class HomeRepoImple implements HomeRepo {
  final ApiServices api;

  HomeRepoImple({required this.api});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var jsonData = await api.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=computer science&Sorting=newest');

      List<BookModel> booksList = [];
      for (var item in jsonData['items']) {
        booksList.add(BookModel.fromJson(item));
      }

      return right(booksList);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFail.dioError(e),
        );
      }
      return left(
        ServerFail(e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var response = await api.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> booksList = [];

      for (var item in response['items']) {
        booksList.add(BookModel.fromJson(item));
      }
      return right(booksList);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFail.dioError(e),
        );
      }
      return left(
        ServerFail(e.toString()),
      );
    }
  }
  
  @override
    Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category}) async {
    try {
      var jsonData = await api.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=computer science&Sorting=newest&sorting=relevance');

      List<BookModel> booksList = [];
      for (var item in jsonData['items']) {
        booksList.add(BookModel.fromJson(item));
      }

      return right(booksList);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFail.dioError(e),
        );
      }
      return left(
        ServerFail(e.toString()),
      );
    }
  }
}
