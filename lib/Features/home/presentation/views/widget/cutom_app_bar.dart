import 'package:book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class customappbar extends StatelessWidget {
  const customappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 15, left: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 75,
            width: 90,
          ),
        const  Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon:const Icon(
                Icons.search,
                size: 25,
              ))
        ],
      ),
    );
  }
}
