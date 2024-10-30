import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity_details.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_cases/fetch_tv_show_details_use_case.dart';

part 'fetch_tv_show_details_state.dart';

class FetchTvShowDetailsCubit extends Cubit<FetchTvShowDetailsState> {
  FetchTvShowDetailsCubit(this.fetchTvShowDetailsUseCase)
      : super(FetchTvShowDetailsInitial());
  final FetchTvShowDetailsUseCase fetchTvShowDetailsUseCase;
   
  Future<void> fetchTvShowDetail(int tvId) async {
    emit(
      FetchTvShowDetailsLoading(),
    );
    var result = await fetchTvShowDetailsUseCase.call(tvId);
    result.fold((failure) {
      emit(
        FetchTvShowDetailsFailure(errorMessage: failure.errorMessage),
      );
    }, (tvShow) {
      emit(
        FetchTvShowDetailsSuccess(tvShow: tvShow),
      );
    });
  }
}
