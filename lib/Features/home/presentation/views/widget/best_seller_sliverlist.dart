import 'package:book/Features/home/presentation/manager/newset_books_cubit/newset_books_cubit_cubit.dart';
import 'package:book/Features/home/presentation/views/widget/Best_seller_listview.dart';
import 'package:book/core/widget/cutom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class listviewBestSellerListview extends StatelessWidget {
  const listviewBestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksCubitState>(
      builder: (context, state) {
        if(state is NewsetBooksCubitsuccess){
           return ListView.builder(
            physics:const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListview(bookModel:state.books[index] ,),
              );
            },);
        }
        else if(state is NewsetBooksCubitfailure){
          return CutomErrorWidget(errMessage: state.errMessage,);
        }
        else{
          return const Center(child: CircularProgressIndicator(),);
        }
       
      },
    );
  }
}
// SliverList(
//       delegate: SliverChildBuilderDelegate(
//         childCount: 10,
//         (context, e) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: BestSellerListview(),
//           );
//         },
//       ),
//     );
 