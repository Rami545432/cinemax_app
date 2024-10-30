import 'package:cinemax_app/core/utils/api_service.dart';
import 'package:cinemax_app/features/seires/data/models/series_details_model/series_details_model.dart';
import 'package:cinemax_app/features/seires/data/models/series_model.dart';
import 'package:cinemax_app/features/seires/data/models/series_season_details/series_season_details_model.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_season_details_entitiy.dart';

import '../../domain/entites/series_entity.dart';
import '../../domain/entites/series_entity_details.dart';

abstract class RemoteSeiresTvDataSource {
  Future<List<SeriesEntity>> fetchTrendingTvShows({int page = 10});
  Future<List<SeriesEntity>> fetchPopularTvShows(dynamic generId,
      {int page = 1});
  Future<List<SeriesEntity>> fetchTopRatedTvShows({int page = 10});
  Future<List<SeriesEntityDetails>> fetchTvShowDetail({required int tvid});
  Future<List<SeriesSeasonDetailsEntitiy>> fetchTvShowSeasonDetails(
      {required int tvid, required int season});
}

class RemoteSeiresTvDataSourceImpl extends RemoteSeiresTvDataSource {
  final ApiService apiService;

  RemoteSeiresTvDataSourceImpl({required this.apiService});
  @override
  Future<List<SeriesEntity>> fetchPopularTvShows(generId,
      {int page = 1}) async {
    List<SeriesEntity> tvShows = [];

    var data = await apiService.getGeneralTv(type: 'tv', generId, page: page);
    for (var show in data["results"]) {
      var allowedLanguages = ['US', 'GB', 'CN', 'IN', 'KR', 'FR'];
      if (show['poster_path'] != null &&
          allowedLanguages.contains(show["origin_country"])) {
        tvShows.add(
          SeriesModel.fromJson(show),
        );
      }
    }
    return tvShows;
  }

  @override
  Future<List<SeriesEntity>> fetchTopRatedTvShows({int page = 1}) async {
    List<SeriesEntity> tvShows = [];
    var data = await apiService.getTopRated(type: 'tv', page: page);
    for (var show in data['results']) {
      if (show['poster_path'] != null) {
        tvShows.add(
          SeriesModel.fromJson(show),
        );
      }
    }
    return tvShows;
  }

  @override
  Future<List<SeriesEntity>> fetchTrendingTvShows({int page = 10}) async {
    List<SeriesEntity> tvShows = [];
    var data = await apiService.getTrendingMovies(type: 'tv', page: page);
    for (var show in data['results']) {
      if (show['poster_path'] != null &&
          show['original_language'] != 'ja' &&
          show['backdrop_path'] != null &&
          show['original_language'] != 'zh') {
        tvShows.add(
          SeriesModel.fromJson(show),
        );
      }
    }
    return tvShows;
  }

  @override
  Future<List<SeriesEntityDetails>> fetchTvShowDetail(
      {required int tvid}) async {
    List<SeriesEntityDetails> tvShows = [];
    var data = await apiService.getMovieDetails(tvid, type: 'tv');

    tvShows.add(SeriesDetailsModel.fromJson(data));
    return tvShows;
  }

  @override
  Future<List<SeriesSeasonDetailsEntitiy>> fetchTvShowSeasonDetails(
      {required int tvid, required int season}) async {
    List<SeriesSeasonDetailsEntitiy> seasons = [];
    var data = await apiService.getSeasonDetails(tvid: tvid, season: season);
    for (var episode in data["episodes"]) {
      if (episode['still_path'] != null) {
        if (seasons.length <= 50) {
          seasons.add(
            SeriesSeasonDetailsModel.fromJson(episode),
          );
        }
      }
    }

    return seasons;
  }
}
