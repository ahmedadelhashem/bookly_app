import 'package:flutter/material.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide:const BorderSide(color: Colors.white)),
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {},
              icon:const Opacity(opacity: .4, child: Icon(Icons.search)))),
    );
  }
}
