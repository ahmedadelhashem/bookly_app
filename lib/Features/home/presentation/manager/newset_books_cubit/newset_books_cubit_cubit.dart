import 'package:bloc/bloc.dart';
import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_cubit_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksCubitState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksCubitInitial());
  final HomeRepo homeRepo;
 
  Future<void>fetchNewsetBooks()async{
    emit(NewsetBooksCubitLoading());
    var result=await homeRepo.fetchBestsellerBooks();
    result.fold((failure){
   emit(NewsetBooksCubitfailure(failure.errMessage));
    }, (books){
    emit(NewsetBooksCubitsuccess(books));
    });
  }
}
