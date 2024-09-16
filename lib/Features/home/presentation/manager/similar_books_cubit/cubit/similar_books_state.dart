part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksfailure extends SimilarBooksState {
  String errMessage;
  SimilarBooksfailure(this.errMessage);
}
final class SimilarBooksSucess extends SimilarBooksState {
  final List<BookModel>books;
  const SimilarBooksSucess(this.books);
}
final class SimilarBooksLoading extends SimilarBooksState {}