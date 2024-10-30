import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/seires/domain/use_cases/fetch_popular_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entites/series_entity.dart';

part 'fetch_popular_tv_shows_state.dart';

class FetchPopularTvShowsCubit extends Cubit<FetchPopularTvShowsState> {
  FetchPopularTvShowsCubit(this.fetchPopularTvShowsUseCase)
      : super(FetchPopularTvShowsInitial());
  final FetchPopularTvShowsUseCase fetchPopularTvShowsUseCase;
  Future<void> fetchPopularTvShows(dynamic generId, {int page = 1}) async {
    if (page == 1) {
      emit(FetchPopularTvShowsLoading());
    } else {
      emit(
        FetchPopularTvShowsPaginationLoading(),
      );
    }
    var results = await fetchPopularTvShowsUseCase.call(generId, page);
    results.fold((failure) {
      emit(
        FetchPopularTvShowsFailure(errorMessage: failure.errorMessage),
      );
    }, (tvShows) {
      emit(
        FetchPopularTvShowsSuccess(tvShows: tvShows),
      );
    });
  }
}
