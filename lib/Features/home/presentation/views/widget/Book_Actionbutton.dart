import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/core/utils/function/launch_url.dart';
import 'package:book/core/widget/cutom_button.dart';
import 'package:flutter/material.dart';


class BooksActionbutton extends StatelessWidget {
  const BooksActionbutton({super.key, required this.bookModel});
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
         const Expanded(
            child: CutomButton(
              backgroundColor: Colors.white,
              text: r'19.99$',
              textcolor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  bottomLeft: Radius.circular(14)),
            ),
          ),
          Expanded(
            child: CutomButton(
              onPressed: () {
                launchcustomur(context,bookModel.volumeInfo.previewLink);
             
              },
              backgroundColor:const Color(0xffEF8262),
              text: getText(bookModel),
              textcolor: Colors.white,
              borderRadius:const BorderRadius.only(
                  topRight: Radius.circular(14),
                  bottomRight: Radius.circular(14)),
            ),
          )
        ],
      ),
    );
  }
  
  getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink==null){
      return 'Not available';
    }
    else{
      return'Preview';
    }
  }
}
