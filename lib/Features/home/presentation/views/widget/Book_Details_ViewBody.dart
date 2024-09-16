import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/presentation/views/widget/Book_Actionbutton.dart';
import 'package:book/Features/home/presentation/views/widget/Bookrating.dart';
import 'package:book/Features/home/presentation/views/widget/Custom_Book_DetailsAppBar.dart';
import 'package:book/Features/home/presentation/views/widget/cutom_list_viewItem.dart';
import 'package:book/Features/home/presentation/views/widget/similar_book_listview.dart';
import 'package:book/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsViewbody extends StatelessWidget {
  const BookDetailsViewbody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .22),
                  child: cutomlistviewitem(
                    image:
                        bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  bookModel.volumeInfo.title!,
                  style: style.textStyle20,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 5,
                ),
                Opacity(
                  opacity: .6,
                  child: Text(
                    textAlign: TextAlign.center,
                    bookModel.volumeInfo.authors![0],
                    style: style.textStyle16.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Bookrating(
                  rating: bookModel.volumeInfo.averageRating ?? 0,
                  count: bookModel.volumeInfo.ratingsCount ?? 0,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                BooksActionbutton(
                  bookModel: bookModel,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also Like',
                      style: style.textStyle18
                          .copyWith(fontWeight: FontWeight.w600),
                    )),
               const SizedBox(
                  height: 15,
                ),
              const  Expanded(child: SimilarBooklistview()),
               const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
