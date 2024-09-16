import 'package:book/core/utils/style.dart';
import 'package:flutter/material.dart';

class CutomErrorWidget extends StatelessWidget {
 const CutomErrorWidget({super.key,required this.errMessage}); 
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage,style: style.textStyle18,textAlign: TextAlign.center,));
  }
}