import 'package:book/Features/home/presentation/manager/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:book/Features/home/presentation/views/widget/cutom_list_viewItem.dart';
import 'package:book/core/widget/cutom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooklistview extends StatelessWidget {
  const SimilarBooklistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSucess){
          return SizedBox(
          height: MediaQuery.of(context).size.height * .19,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListView.builder(
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, Index) {
                  return Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 5.0),
                    child: cutomlistviewitem(
                      image:
                          state.books[Index].volumeInfo.imageLinks?.thumbnail??'' ,
                    ),
                  );
                }),
          ),
        );
        }
        else if(state is SimilarBooksfailure){
          return CutomErrorWidget(errMessage: state.errMessage);
        }
        else{
          return const Center(child: CircularProgressIndicator(),);
        }
        
      },
    );
  }
}
