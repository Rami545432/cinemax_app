import 'package:cinemax_app/features/seires/data/models/series_details_model/cast.dart';
import 'package:cinemax_app/features/seires/data/models/series_details_model/season.dart';

import '../../data/models/series_details_model/result.dart';

class SeriesEntityDetails {
  final num tvId;
  final String tvTitle;
  final String tvStory;
  final String tvPosterPath;
final String firstDate;
  final num numOfEpisoide;
  final num numOfSeason;
  final List<Season> season;
  final num rating;
    final List<Cast> actorDetails;

  final List<int> geners;
  final List<Result> videoKey;

  SeriesEntityDetails(
      {required this.tvId,
      required this.tvTitle,
      required this.tvStory,
      required this.tvPosterPath,
      required this.numOfEpisoide,
      required this.numOfSeason,
      required this.season,
      required this.rating,
      required this.actorDetails,
      required this.videoKey,
      required this.firstDate,
      required this.geners});
}
