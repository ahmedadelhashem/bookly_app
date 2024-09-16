
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingListPage extends StatefulWidget {
  const LoadingListPage({super.key});

  @override
  State<LoadingListPage> createState() => _LoadingListPageState();
}

class _LoadingListPageState extends State<LoadingListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading List'),
      ),
      body: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        enabled: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: Container(
                color: Colors.white,
                padding:const EdgeInsets.all(20),
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * .3,
            //   child: ListView.builder(
            //     physics: const BouncingScrollPhysics(),
            //     itemCount: 10,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, Index) {
            //       return Padding(
            //           padding: EdgeInsets.symmetric(horizontal: 8.0),
            //           child: Text(data),
            //           );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class desc extends StatelessWidget {
  const desc({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: Container(
            color: Colors.white,
            height: 10,
            width: 20,
          )),
    );
  }
}

// class BannerPlaceholder extends StatelessWidget {
//   const BannerPlaceholder({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 200.0,
//       margin: const EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12.0),
//         color: Colors.white,
//       ),
//     );
//   }
// }

// class TitlePlaceholder extends StatelessWidget {
//   final double width;

//   const TitlePlaceholder({
//     Key? key,
//     required this.width,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: width,
//             height: 12.0,
//             color: Colors.white,
//           ),
//           const SizedBox(height: 8.0),
//           Container(
//             width: width,
//             height: 12.0,
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }

// enum ContentLineType {
//   twoLines,
//   threeLines,
// }

// class ContentPlaceholder extends StatelessWidget {
//   final ContentLineType lineType;

//   const ContentPlaceholder({
//     Key? key,
//     required this.lineType,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Row(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             width: 96.0,
//             height: 72.0,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12.0),
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(width: 12.0),
//           Expanded(
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 10.0,
//                   color: Colors.white,
//                   margin: const EdgeInsets.only(bottom: 8.0),
//                 ),
//                 if (lineType == ContentLineType.threeLines)
//                   Container(
//                     width: double.infinity,
//                     height: 10.0,
//                     color: Colors.white,
//                     margin: const EdgeInsets.only(bottom: 8.0),
//                   ),
//                 Container(
//                   width: 100.0,
//                   height: 10.0,
//                   color: Colors.white,
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }