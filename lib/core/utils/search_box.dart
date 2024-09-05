import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: () async{
          GoRouter.of(context).push(Approuter.kSearchView);
        },
        child: Container(
          height: 41,
          width: 327,
          decoration: BoxDecoration(
            color: AppPrimaryColors.soft,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset('assets/images/search.svg'),
              const Text(
                'Search a title..',
                style: AppStyles.textstyle12,
              ),
              const SizedBox(
                width: 90,
              ),
              const VerticalDivider(
                width: 2,
                thickness: 1,
                color: Colors.grey,
                indent: 10,
                endIndent: 10,
              ),
              SvgPicture.asset('assets/images/options-2.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
