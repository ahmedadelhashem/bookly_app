import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
    Future<void>fetchSimilarBooks({required String catagroy})async{
    emit(SimilarBooksLoading());
    var result=await homeRepo.fetchSimilarBooks(catagroy: catagroy);
    result.fold((failure){
   emit(SimilarBooksfailure(failure.errMessage));
    }, (books){
    emit(SimilarBooksSucess(books));
    });
  }
}
