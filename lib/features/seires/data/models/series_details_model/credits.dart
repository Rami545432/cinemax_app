
import 'cast.dart';

class Credits {
  List<Cast>? cast;
  List<dynamic>? crew;

  Credits({this.cast, this.crew});

  factory Credits.fromJson(Map<String, dynamic> json) => Credits(
        cast: (json['cast'] as List<dynamic>?)
            ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
            .where((castImage) {
          return castImage.profilePath != null;
        }).toList(),
        crew: json['crew'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'cast': cast?.map((e) => e.toJson()).toList(),
        'crew': crew,
      };
}
