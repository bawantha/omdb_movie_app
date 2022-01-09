import 'package:get/get.dart';

import 'package:omdb_movie_app/app/modules/home/bindings/home_binding.dart';
import 'package:omdb_movie_app/app/modules/home/views/home_view.dart';
import 'package:omdb_movie_app/app/modules/movie/bindings/movie_binding.dart';
import 'package:omdb_movie_app/app/modules/movie/views/movie_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MOVIE,
      page: () => MovieView(),
      binding: MovieBinding(),
    ),
  ];
}
