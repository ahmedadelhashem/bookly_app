
import 'package:book/Features/search/presetation/views/widget/Custom_Search_TextField.dart';
import 'package:book/core/utils/style.dart';
import 'package:flutter/material.dart';

class SearchViewbody extends StatelessWidget {
  const SearchViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextfield(),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 16.0),
            child: Text(
              'SearchResult',
              style: style.textStyle18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: SearchResultListview())
        ],
      ),
    );
  }
}

class SearchResultListview extends StatelessWidget {
  const SearchResultListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, e) {
          return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10),
            // child: BestSellerListview(bookModel: null,),
            child: Text(''),
          );
        });
  }
}
