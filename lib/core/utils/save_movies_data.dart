import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:hive/hive.dart';

void saveMoviesData(
  List<MovieEntity> movies,
  String boxname,
) {
  var popularMovies = Hive.box<MovieEntity>(boxname);
  popularMovies.addAll(movies);
}
