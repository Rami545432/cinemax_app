import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchNotFind extends StatelessWidget {
  const SearchNotFind({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset('assets/images/no-results1.svg'),
        const SizedBox(
          height: 52,
          width: 188,
          child: Text('We Are Sorry, We Can Not Find The Movie :(',
              style: AppStyles.textstyle16),
        ),
        const SizedBox(
          height: 38,
          width: 252,
          child: Text(
            'Find Your Movie By Type Title, Categories, Years, Etc ',
            style: AppStyles.textstyle12,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
