import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class cutomlistviewitem extends StatelessWidget {
  const cutomlistviewitem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: image,
          // placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
          errorWidget: (context, url, error) =>const Icon(Icons.error),)
      ),
    );
  }
}

