class SeriesSeasonDetailsEntitiy {
  final String episodeName;
  final String episodeOverView;
  final num episodeNum;
  final num episodeRunTime;
  final num episodeRating;
  final String episodeImage;
  final int tvId;
  final num seasonNum;

  SeriesSeasonDetailsEntitiy(
      {required this.episodeName,
      required this.episodeOverView,
      required this.episodeNum,
      required this.episodeRunTime,
      required this.episodeRating,
      required this.episodeImage
      ,required this.tvId,required this.seasonNum});
}
