import 'package:cinemax_app/features/seires/domain/entites/series_season_details_entitiy.dart';

import 'crew.dart';
import 'guest_star.dart';

class SeriesSeasonDetailsModel extends SeriesSeasonDetailsEntitiy {
  String? airDate;
  int? episodeNumber;
  String? episodeType;
  int? id;
  String? name;
  String? overview;
  String? productionCode;
  int? runtime;
  int? seasonNumber;
  int? showId;
  String? stillPath;
  double? voteAverage;
  int? voteCount;
  List<Crew>? crew;
  List<GuestStar>? guestStars;

  SeriesSeasonDetailsModel({
    this.airDate,
    this.episodeNumber,
    this.episodeType,
    this.id,
    this.name,
    this.overview,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
    this.voteAverage,
    this.voteCount,
    this.crew,
    this.guestStars,
  }) : super(
            episodeName: name!,
            episodeOverView: overview!,
            episodeNum: episodeNumber!,
            episodeRunTime: runtime ?? 22,
            episodeRating: voteAverage!,
            episodeImage: stillPath!,tvId: showId!,seasonNum: seasonNumber!);

  factory SeriesSeasonDetailsModel.fromJson(Map<String, dynamic> json) {
    return SeriesSeasonDetailsModel(
      airDate: json['air_date'] as String?,
      episodeNumber: json['episode_number'] as int?,
      episodeType: json['episode_type'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      productionCode: json['production_code'] as String?,
      runtime: json['runtime'] as int?,
      seasonNumber: json['season_number'] as int?,
      showId: json['show_id'] as int?,
      stillPath: json['still_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
      crew: (json['crew'] as List<dynamic>?)
          ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
          .toList(),
      guestStars: (json['guest_stars'] as List<dynamic>?)
          ?.map((e) => GuestStar.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'air_date': airDate,
        'episode_number': episodeNumber,
        'episode_type': episodeType,
        'id': id,
        'name': name,
        'overview': overview,
        'production_code': productionCode,
        'runtime': runtime,
        'season_number': seasonNumber,
        'show_id': showId,
        'still_path': stillPath,
        'vote_average': voteAverage,
        'vote_count': voteCount,
        'crew': crew?.map((e) => e.toJson()).toList(),
        'guest_stars': guestStars?.map((e) => e.toJson()).toList(),
      };
}
