import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubitCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubitCubit(this.homeRepo) : super(NewestBooksCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksCubitLoading());

    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBooksCubitFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(NewestBooksCubitSuccess(booksList: books));
    });
  }
}
