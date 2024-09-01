import 'cast.dart';
import 'crew.dart';

class Credits {
  List<Cast>? cast;
  List<Crew>? crew;

  Credits({this.cast, this.crew});

  factory Credits.fromJson(Map<String, dynamic> json) => Credits(
        cast: (json['cast'] as List<dynamic>?)
            ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
            .toList(),
        crew: (json['crew'] as List<dynamic>?)
            ?.map((e) => Crew.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'cast': cast?.map((e) => e.toJson()).toList(),
        'crew': crew?.map((e) => e.toJson()).toList(),
      };
}
