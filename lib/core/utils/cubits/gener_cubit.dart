import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../features/home/domian/entites/entity.dart';

part 'gener_state.dart';

class GenerCubit extends Cubit<int> {
  GenerCubit() : super(0);
  int? selectedGenreIndex;
  final List<List<MovieEntity>> movieLists =
      List.generate(6, (_) => []); // Adjust size based on genres

  void selectGenre(int index) {

    emit(index);
  }

  void addMoviesToGenre(int index, MovieEntity movies) {
    movieLists[index].add(movies);
    emit(index);
  }

  // Method to get movies for the selected genre
  List<MovieEntity> getMoviesForSelectedGenre() {
    return movieLists[state]; // Return movies for the currently selected genre
  }
}
