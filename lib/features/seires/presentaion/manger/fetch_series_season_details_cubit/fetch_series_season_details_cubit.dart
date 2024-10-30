import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_season_details_entitiy.dart';
import 'package:cinemax_app/features/seires/domain/use_cases/fetch_series_season_details.dart';
import 'package:meta/meta.dart';

part 'fetch_series_season_details_state.dart';

class FetchSeriesSeasonDetailsCubit
    extends Cubit<FetchSeriesSeasonDetailsState> {
  FetchSeriesSeasonDetailsCubit(this.fetchSeriesSeasonDetails)
      : super(FetchSeriesSeasonDetailsInitial());
  final FetchSeriesSeasonDetailsUseCase fetchSeriesSeasonDetails;
  Future<void> fetchSeriesSeasonDetail(
      {required int tvid, required int season}) async {
    emit(
      FetchSeriesSeasonDetailsLoading(),
    );
    var data = await fetchSeriesSeasonDetails.call(tvid, season);
    data.fold((failure) {
      emit(
        FetchSeriesSeasonDetailsFailure(errorMessage: failure.errorMessage),
      );
    }, (seasons) {
      emit(
        FetchSeriesSeasonDetailsSuccess(seasons: seasons),
      );
    });
  }
}
