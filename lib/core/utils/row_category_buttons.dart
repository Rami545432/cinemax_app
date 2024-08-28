import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/category_button.dart';
import 'package:flutter/material.dart';

class RowCategoryButton extends StatefulWidget {
  const RowCategoryButton({super.key});

  @override
  State<RowCategoryButton> createState() => _RowCategoryButtonState();
}

class _RowCategoryButtonState extends State<RowCategoryButton> {
  int _selectedIndex = 0;
  void _onButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < buttonTexts.length; i++)
            CategoryButton(
                onTap: () {
                  _onButtonPressed(i);
                },
                isSelected: _selectedIndex == i,
                text: buttonTexts[i])
        ],
      ),
    );
  }
}
