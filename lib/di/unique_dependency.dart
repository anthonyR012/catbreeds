import 'package:catbreeds/config/env/environment.dart';
import 'package:catbreeds/cubit/cat_cubit/cat_cubit.dart';
import 'package:catbreeds/data/datasource/cat_datasource.dart';
import 'package:catbreeds/data/implement/cat_api_datasource.dart';
import 'package:catbreeds/domain/implement/cat_implement.dart';
import 'package:catbreeds/domain/repository/cat_repository.dart';
import 'package:catbreeds/domain/use_case/do_get_cats.dart';

Future<void> injectionModules() async {
  // ---------------HOME MODULE--------------
  // * [HOME]
  Env.sl.registerLazySingleton<CatDatasource>(
      () => CatApiDatasourceImplement(Env.sl(), Env.sl()));
  Env.sl.registerLazySingleton<CatRepository>(
      () => CatImplement(Env.sl<CatDatasource>()));

//USES CASES
  Env.sl.registerLazySingleton(() => DoGetCats(Env.sl()));
  //CUBITS
  Env.sl.registerLazySingleton(
    () => CatCubit(Env.sl()),
  );
}
