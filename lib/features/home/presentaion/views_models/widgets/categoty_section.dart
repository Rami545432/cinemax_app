import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/category_button.dart';
import 'package:flutter/material.dart';

class CategoriesSections extends StatefulWidget {
  const CategoriesSections({super.key});

  @override
  State<CategoriesSections> createState() => _CategoriesSectionsState();
}

class _CategoriesSectionsState extends State<CategoriesSections> {
  int _selectedIndex = 0;
  void _onButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Categories', style: AppStyles.textstyle16),
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < buttonTexts.length; i++)
                  CategoryButton(
                      text: buttonTexts[i],
                      onTap: () {
                        _onButtonPressed(i);
                      },
                      isSelected: _selectedIndex == i),
              ],
            ),
          ),
        )
      ],
    );
  }
}
