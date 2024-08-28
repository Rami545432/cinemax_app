import 'package:cinemax_app/core/utils/rating.dart';
import 'package:flutter/material.dart';

class SearchImageStack extends StatelessWidget {
  const SearchImageStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Image(
          image: AssetImage('assets/images/SpiderMan.png'),
          width: 112,
          height: 147,
        ),
        Positioned(
          left: 45,
          top: 6,
          child: Rating(),
        ),
      ],
    );
  }
}
