import 'package:get/get.dart';
import 'package:omdb_movie_app/app/data/models/movie.dart';
import 'package:omdb_movie_app/app/data/providers/omdb/omdb.api.dart';

class MovieController extends GetxController {
  final OmdbApi _api =OmdbApi();
  Movie? movie;
  final isLoading=false.obs;
  @override
  void onInit() async{
    super.onInit();
    isLoading.value=true;
    final res=await _api.getMovie(Get.arguments['movieId']);
    movie=res;
    isLoading.value=false;

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
