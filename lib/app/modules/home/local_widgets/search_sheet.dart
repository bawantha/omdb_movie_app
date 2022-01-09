import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:omdb_movie_app/app/modules/home/controllers/home_controller.dart';

class SearchSheet extends StatelessWidget {

  final HomeController controller;
  const SearchSheet({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height*0.2,
      color:Colors.grey,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 300.w,
              height: 50.h,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: TextFormField(
                    onChanged: (v){
                      controller.searchText.value=v;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 50.w,
              height: 50.h,
              child: Card(child: IconButton(onPressed: (){
                controller.searchMovie();
              }, icon: Icon(Icons.chevron_right)),elevation: 5,),
              )
          ],
        ),
      ),
    );
  }
}
