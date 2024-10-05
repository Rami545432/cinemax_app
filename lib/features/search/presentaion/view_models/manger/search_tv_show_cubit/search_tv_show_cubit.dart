import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/search/domain/use_case/search_tv_show_use_case.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:meta/meta.dart';

part 'search_tv_show_state.dart';

class SearchTvShowCubit extends Cubit<SearchTvShowState> {
  SearchTvShowCubit(this.searchTvShowUseCase) : super(SearchTvShowInitial());
  final SearchTvShowUseCase searchTvShowUseCase;
  Future<void> searchTvShows(String query) async {
    var results = await searchTvShowUseCase.call(query);
    results.fold((failure) {
      emit(
        SearchTvShowFailure(errorMessage: failure.errorMessage),
      );
    }, (suggestions) {
      emit(
        SearchTvShowSuccess(suggestions: suggestions),
      );
    });
  }
}
