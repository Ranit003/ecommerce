import 'package:ecommerce/component/main_header.dart';
import 'package:ecommerce/controller/controllers.dart';
import 'package:ecommerce/view/home/components/carousel_slider/carousel_slider_view.dart';
import 'package:ecommerce/view/home/components/popular_cayegory/popular_category_loading_card.dart';
import 'package:ecommerce/view/home/components/section_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'components/carousel_slider/carousel_loading.dart';
import 'components/popular_cayegory/popular_category.dart';
import 'components/popular_cayegory/popular_category_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
             MainHeader(),
            Obx((){
              if(homeController.bannerList.isNotEmpty){
                return CarsouselSliderView(
                    bannerList: homeController.bannerList
                );
              }else{
                return CarouselLoading();
              }
            }),
            SectionTitle(title: "Popular Category"),
            Obx((){
              if(homeController.popularCategoryList.isNotEmpty){
                return PopularCategory(categories:homeController.popularCategoryList,

                );
              }else{
                return const PopularCategoryLoading();
              }
            })
          ],
        ));
  }
}
