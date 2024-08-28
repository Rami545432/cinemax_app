import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.g.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../constant.dart';

Future<void> hiveInitialize() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MovieEntityAdapter());
  await Hive.openBox<MovieEntity>(popularBox);
  await Hive.openBox<MovieEntity>(newsetBox);
}
// void clearBox(){
//   var box=Hive.box(newsetBox);
//   box.clear();
// }
