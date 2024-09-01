
import 'package:hive_flutter/hive_flutter.dart';
import '../../../constant.dart';
import '../../../features/home/domian/entites/entity.dart';
import '../../../features/home/domian/entites/movie_details_entity.dart';

Future<void> hiveInitialize() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MovieEntityAdapter());
  Hive.registerAdapter(MovieDetailsEntityAdapter());
    await Hive.openBox<MovieEntity>(popularBox);
   final popular =Hive.box<MovieEntity>(popularBox);
  await popular.clear();
  var newset = await Hive.openBox<MovieEntity>(newsetBox);
  await newset.clear();
//  var details= await Hive.openBox<MovieDetailsEntity>(movieDetailtBox);
//  await details.delete(movieDetailtBox);
}
// void clearBox(){
//   var box=Hive.box(movieDetailtBox);
//   box.clear();
// }
