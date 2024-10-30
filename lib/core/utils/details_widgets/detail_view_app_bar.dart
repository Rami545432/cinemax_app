import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/favorite_button.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/opcaity_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsViewAppbar extends StatefulWidget {
  const DetailsViewAppbar(
      {super.key, required this.imageUrl, required this.title});
  final String imageUrl;
  final String title;
  @override
  State<DetailsViewAppbar> createState() => _DetailsViewAppbarState();
}

class _DetailsViewAppbarState extends State<DetailsViewAppbar> {
  bool _isPressed = false;
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        isPressed(context);
      },
      child: SliverAppBar(
          leading: IconButton(
            onPressed: () {
              isClicked(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: _isPressed || _isClicked
                  ? AppPrimaryColors.dark
                  : Colors.transparent),
          title: Text(
            widget.title,
            style: AppStyles.textstyle16,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          centerTitle: true,
          actions: const [FavoriteButton()],
          expandedHeight: 550,
          flexibleSpace: FlexibleSpaceBar(
            background: OpacityDeatailMovieImage(
              imageUrl: widget.imageUrl,
            ),
          )),
    );
  }

  void isClicked(BuildContext context) {
    return setState(() {
      _isClicked = !_isClicked;
      Navigator.of(context).maybePop();
    });
  }

  void isPressed(BuildContext context) {
    return setState(() {
      _isPressed = !_isPressed;
      Navigator.of(context).maybePop();
    });
  }
}