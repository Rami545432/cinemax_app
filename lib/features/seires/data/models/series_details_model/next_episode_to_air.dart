class NextEpisodeToAir {
  num? id;
  String? name;
  String? overview;
  num? voteAverage;
  num? voteCount;
  String? airDate;
  num? episodeNumber;
  String? episodeType;
  String? productionCode;
  dynamic runtime;
  num? seasonNumber;
  num? showId;
  dynamic stillPath;

  NextEpisodeToAir({
    this.id,
    this.name,
    this.overview,
    this.voteAverage,
    this.voteCount,
    this.airDate,
    this.episodeNumber,
    this.episodeType,
    this.productionCode,
    this.runtime,
    this.seasonNumber,
    this.showId,
    this.stillPath,
  });

  factory NextEpisodeToAir.fromJson(Map<String, dynamic> json) {
    return NextEpisodeToAir(
      id: json['id'] as num?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      voteAverage: json['vote_average'] as num?,
      voteCount: json['vote_count'] as num?,
      airDate: json['air_date'] as String?,
      episodeNumber: json['episode_number'] as num?,
      episodeType: json['episode_type'] as String?,
      productionCode: json['production_code'] as String?,
      runtime: json['runtime'] as dynamic,
      seasonNumber: json['season_number'] as num?,
      showId: json['show_id'] as num?,
      stillPath: json['still_path'] as dynamic,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'overview': overview,
        'vote_average': voteAverage,
        'vote_count': voteCount,
        'air_date': airDate,
        'episode_number': episodeNumber,
        'episode_type': episodeType,
        'production_code': productionCode,
        'runtime': runtime,
        'season_number': seasonNumber,
        'show_id': showId,
        'still_path': stillPath,
      };
}
