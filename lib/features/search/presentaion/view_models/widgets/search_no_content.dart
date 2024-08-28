import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchListNoContent extends StatelessWidget {
  const SearchListNoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.23,
        ),
        SvgPicture.asset('assets/images/notFoundSearch.svg'),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'We Are Sorry, We Can Not Find The Movie :(',
          style: AppStyles.textstyle16,
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: const Text(
            'Find Your Movie By Type Title, Categories, Years, etc  ',
            style: AppStyles.textstyle12,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
