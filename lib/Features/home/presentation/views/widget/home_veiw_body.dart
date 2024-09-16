import 'package:book/Features/home/presentation/views/widget/best_seller_sliverlist.dart';
import 'package:book/Features/home/presentation/views/widget/cutom_app_bar.dart';
import 'package:book/Features/home/presentation/views/widget/feature_box_item.dart';
import 'package:book/core/utils/style.dart';
import 'package:flutter/material.dart';

class HomeVeiwBody extends StatelessWidget {
  const HomeVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customappbar(),
              Featurebox(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                     EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: Text(
                  'Best Seller',
                  style: style.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverFillRemaining(child: listviewBestSellerListview())
      ],
    );
  }
}
