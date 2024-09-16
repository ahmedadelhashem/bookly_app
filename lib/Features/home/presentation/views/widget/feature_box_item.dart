import 'package:book/Features/home/presentation/manager/feature_books_cubit/featured_books_cubit_cubit.dart';
import 'package:book/Features/home/presentation/views/widget/cutom_list_viewItem.dart';
import 'package:book/core/widget/cutom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Featurebox extends StatelessWidget {
  const Featurebox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookscubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics:const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, Index) {
                  return Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: (){
                        GoRouter.of(context).push('/BookDetailsView',extra: state.books[Index]);
                      },
                      child: cutomlistviewitem(
                        image: state.books[Index].volumeInfo.imageLinks
                                ?.thumbnail??''
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CutomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
