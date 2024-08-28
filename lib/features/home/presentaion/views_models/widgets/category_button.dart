import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    this.onTap,
    required this.isSelected,
    required this.text,
  });
  final Function()? onTap;
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: isSelected ? AppPrimaryColors.soft : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            height: 33,
            width: 100,
            child: Center(
              child: Text(
                softWrap: false,
                textAlign: TextAlign.center,
                text,
                style: TextStyle(
                    color: isSelected
                        ? AppPrimaryColors.blueAccent
                        : Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
