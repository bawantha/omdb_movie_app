import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:omdb_movie_app/app/modules/home/local_widgets/search_sheet.dart';
import 'package:omdb_movie_app/app/routes/app_pages.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF090F13),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                    child: Container(
                      width: 50.w,
                      height: 50.h,
                      child: Card(
                          child: IconButton(
                              onPressed: () {
                                Get.bottomSheet(SearchSheet(
                                  controller: controller,
                                ));
                              },
                              icon: Icon(Icons.search))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: 720.h,
              child: Container(
                width: 100.w,
                height: 100.h,
                child: Obx(()=>LazyLoadScrollView(
                  onEndOfPage: ()=>controller.searchMovie(),
                  isLoading: controller.isLastPage,
                  child: GridView.builder(
                    itemCount: controller.movies.value.length,
                    itemBuilder: (context, index) {
                      final movie = controller.movies.value[index];
                      return Shimmer(
                        duration: Duration(seconds: 3), //Default value
                        interval: Duration(seconds: 5), //Default value: Duration(seconds: 0)
                        color: Colors.grey, //Default value
                        colorOpacity: 0, //Default value
                        enabled: true, //Default value
                        direction: ShimmerDirection.fromLTRB(),  //Default Value
                        child: InkWell(
                          onTap: (){
                            Get.toNamed(Routes.MOVIE,arguments: {'movieId':movie.imdbID!});
                          },
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.network(
                              movie.Poster!,
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                          ),
                        )
                      );
                    }, gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  ),),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
