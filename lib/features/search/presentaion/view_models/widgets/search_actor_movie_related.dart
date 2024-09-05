import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/custom_vertical_divider.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/search/data/models/search_actor_model/known_for.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_movie_related_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchMovieRelatedCard extends StatelessWidget {
  const SearchMovieRelatedCard({
    super.key,
    required this.actorEntity,
  });
  final List<KnownFor> actorEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 16),
        child: SizedBox(
          height: 800,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: actorEntity.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(Approuter.kDetailView,
                      extra: actorEntity[index].id);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      MovieRelatedImageStack(
                        knownFor: actorEntity[index],
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200,
                                child: Text(
                                  actorEntity[index].title ?? '',
                                  maxLines: 2,
                                  style: AppStyles.textstyle16,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                  
                              const SizedBox(
                                height: 12,
                              ),
                              // const Row(
                              //   children: [
                              //     MovieDurationTime(),
                              //     SizedBox(
                              //       width: 16,
                              //     ),
                              //     PGContainer()
                              //   ],
                              // ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  const CustomVerticalDivider(),
                                  Text(
                                    'Movie',
                                    style: AppStyles.textstyle12.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
