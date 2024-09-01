// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieEntityAdapter extends TypeAdapter<MovieEntity> {
  @override
  final int typeId = 32;

  @override
  MovieEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieEntity(
      moviTtitle: fields[0] as String,
      gener: (fields[1] as List).cast<int>(),
      movieId: fields[5] as int,
      rating: fields[2] as num,
      date: fields[3] as String,
      image: fields[4] as String,
      horizentalImage: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MovieEntity obj) {
    writer
      ..writeByte(7)
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
      ..write(obj.horizentalImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
