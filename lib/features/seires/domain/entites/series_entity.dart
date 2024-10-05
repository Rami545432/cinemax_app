class SeriesEntity {
  final int tvId;

  final String tvName;

  final String tvPosterPath;

  final String tvBackDropPath;

  final String tvFirstAirDate;

  final num tvRating;
  final List<int> gener;

  SeriesEntity(
      {required this.tvId,
      required this.tvName,
      required this.tvPosterPath,
      required this.tvBackDropPath,
      required this.tvFirstAirDate,
      required this.tvRating,
      required this.gener});
        @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SeriesEntity && other.tvId == tvId; // Compare IDs
  }

  @override
  int get hashCode => tvId.hashCode;
}
