import 'package:cinemax_app/core/utils/details_widgets/detail_view_app_bar.dart';
import 'package:flutter/widgets.dart';

class DetalisViewAppBarCompoentes extends StatelessWidget {
  const DetalisViewAppBarCompoentes({
    super.key,
    required this.imageurl,
    required this.title,
  });

  final String imageurl, title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            DetailsViewAppbar(
              imageUrl: imageurl,
              title: title,
            ),
          ]),
    );
  }
}
