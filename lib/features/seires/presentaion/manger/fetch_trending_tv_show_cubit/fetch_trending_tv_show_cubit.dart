import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/seires/domain/use_cases/fetch_trending_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/series_entity.dart';

part 'fetch_trending_tv_show_state.dart';

class FetchTrendingTvShowCubit extends Cubit<FetchTrendingTvShowState> {
  FetchTrendingTvShowCubit(this.fetchTreningTvShowsUseCase)
      : super(FetchTrendingTvShowInitial());
  final FetchTreningTvShowsUseCase fetchTreningTvShowsUseCase;
  Future<void> fetchTrendingTvShow({int page = 10}) async {
    if (page == 10) {
      emit(FetchTrendingTvShowLoading());
    } else {
      emit(
        FetchTrendingTvShowPaginationLoading(),
      );
    }
    var results = await fetchTreningTvShowsUseCase.call(page);
    results.fold((failure) {
      emit(
        FetchTrendingTvShowFailure(errorMessage: failure.errorMessage),
      );
    }, (tvShows) {
      emit(
        FetchTrendingTvShowSuccess(tvShows: tvShows),
      );
    });
  }
}
