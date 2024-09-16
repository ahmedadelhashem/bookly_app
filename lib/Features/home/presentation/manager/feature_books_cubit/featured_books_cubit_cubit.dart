import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';

import 'package:equatable/equatable.dart';
part 'featured_books_cubit_state.dart';

class FeaturedBookscubit extends Cubit<FeaturedBooksState> {
  FeaturedBookscubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void>fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    var result=await homeRepo.fetchFeaturedBooks();
    result.fold((failure){
   emit(FeaturedBooksFailure(failure.errMessage));
    }, (books){
    emit(FeaturedBooksSuccess(books));
    },);
  }
}
