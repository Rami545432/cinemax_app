// ignore: unused_import
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:flutter/material.dart';

class SearchCardListView extends StatelessWidget {
  const SearchCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: 400,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Text('data'),
          );
        },
      ),
    );
  }
}
