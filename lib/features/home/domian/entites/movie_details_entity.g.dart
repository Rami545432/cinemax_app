// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

part of 'movie_details_entity.dart';

class MovieDetailsEntityAdapter extends TypeAdapter<MovieDetailsEntity> {
  @override
  final int typeId = 7;

  @override
  MovieDetailsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieDetailsEntity(
        moviTtitle: fields[0] as String,
        gener: (fields[1] as List).cast<int>(),
        rating: fields[2] as num,
        date: fields[3] as String,
        image: fields[4] as String,
        movieId: fields[5] as int,
        duration: fields[6] as int,
        actorName: fields[7] as List<Cast>,
        storyLine: fields[8] as String,
        videoKey: fields[9] as List<Result>);
  }

  @override
  void write(BinaryWriter writer, MovieDetailsEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.moviTtitle)
      ..writeByte(1)
      ..write(obj.gener)
      ..writeByte(2)
      ..write(obj.rating)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.movieId)
      ..writeByte(6)
      ..write(obj.duration)
      ..writeByte(7)
      ..write(obj.actorName)
      ..writeByte(8)
      ..write(obj.storyLine)
      ..writeByte(9)
      ..write(obj.videoKey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDetailsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
