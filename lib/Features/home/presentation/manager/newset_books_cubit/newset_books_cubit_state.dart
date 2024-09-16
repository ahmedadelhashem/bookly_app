part of 'newset_books_cubit_cubit.dart';

sealed class NewsetBooksCubitState extends Equatable {
  const NewsetBooksCubitState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksCubitInitial extends NewsetBooksCubitState {}
final class NewsetBooksCubitLoading extends NewsetBooksCubitState {}
final class NewsetBooksCubitsuccess extends NewsetBooksCubitState {
 final List<BookModel>books;
  const NewsetBooksCubitsuccess(this.books);
}
final class NewsetBooksCubitfailure extends NewsetBooksCubitState {
 final String errMessage;
 const  NewsetBooksCubitfailure(this.errMessage);
}