import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/presentation/views/widget/Bookrating.dart';
import 'package:book/Features/home/presentation/views/widget/cutom_list_viewItem.dart';
import 'package:book/constrant.dart';
import 'package:book/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListview extends StatelessWidget {
  const BestSellerListview({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetailsView', extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
          height: 115,
          child: Row(
            children: [
              cutomlistviewitem(
                image: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * .5,
                          child: Text(bookModel.volumeInfo.title!,
                              style: style.textStyle20
                                  .copyWith(fontFamily: kGTSectraFine),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis)),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        bookModel.volumeInfo.authors![0],
                        style: style.textStyle14,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            'Free',
                            style: style.textStyle20
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Bookrating(
                            mainAxisAlignment: MainAxisAlignment.center,
                            rating: bookModel.volumeInfo.averageRating ?? 0,
                            count: bookModel.volumeInfo.ratingsCount ?? 0,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//  AspectRatio(
//                 aspectRatio: 2.5 / 4,
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.red,
//                       image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: AssetImage(AssetsData.Image))),
//                 ),
//               ),