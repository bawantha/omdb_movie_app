import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:omdb_movie_app/app/data/models/movie_summary.dart';
import 'package:omdb_movie_app/app/data/providers/omdb/omdb.api.dart';

class HomeController extends GetxController {
  final OmdbApi _api =OmdbApi();

 final searchText="".obs;
 int paginator=1;
 bool isLastPage=false;
  final movies = <MovieSummary>[].obs;


  @override
  void onReady() {
    // TODO: implement onReady
    ever(searchText,(_){
      if(searchText==""){
        movies.clear();
      }
    });
  }


  void searchMovie() async{
    final res=await _api.getMovies(paginator, searchText.value);
    paginator=paginator+1;
    if(res!=null){
      movies.addAll(res);
    }else{
      isLastPage=true;
    }
  }
}
