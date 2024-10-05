import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/seires/domain/use_cases/fetch_top_rated_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/series_entity.dart';

part 'fetch_top_rated_tv_shows_state.dart';

class FetchTopRatedTvShowsCubit extends Cubit<FetchTopRatedTvShowsState> {
  FetchTopRatedTvShowsCubit(this.fetchTopRatedTvShowsUseCase)
      : super(FetchTopRatedTvShowsInitial());
  final FetchTopRatedTvShowsUseCase fetchTopRatedTvShowsUseCase;
  Future<void> fetchTopRatedTvShows({int page = 10}) async {
    if (page == 10) {
      emit(FetchTopRatedTvShowsLoading());
    } else {
      emit(FetchTopRatedTvShowsLoadingPagination());
    }
    var results = await fetchTopRatedTvShowsUseCase.call(page);
    results.fold((failure) {
      emit(
        FetchTopRatedTvShowsFailure(errorMessage: failure.errorMessage),
      );
    }, (tvShows) {
      emit(
        FetchTopRatedTvShowsSuccess(tvShows: tvShows),
      );
    });
  }
}
