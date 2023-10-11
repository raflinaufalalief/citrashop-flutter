import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/consts/consts.dart';
import 'package:flutter_ecommerce/consts/list.dart';
import 'package:flutter_ecommerce/widgets_common/home_buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),

          //swipper brand
          VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: sliderList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  sliderList[index],
                  fit: BoxFit.fill,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 8))
                    .make();
              }),

          10.heightBox,
          //deals buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                2,
                (index) => homeButtons(
                    height: context.screenHeight * 0.15,
                    width: context.screenWidth / 2.5,
                    icon: index == 0 ? icTodaysDeal : icFlashDeal,
                    title: index == 0 ? todayDeal : flashsale)),
          ),
          //swiper 2
          10.heightBox,
          VxSwiper.builder(
              aspectRatio: 16 / 9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: secondSliderList.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  secondSliderList[index],
                  fit: BoxFit.fill,
                )
                    .box
                    .rounded
                    .clip(Clip.antiAlias)
                    .margin(const EdgeInsets.symmetric(horizontal: 8))
                    .make();
              }),

          //category button
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                3,
                (index) => homeButtons(
                      height: context.screenHeight * 0.10,
                      width: context.screenWidth / 3.5,
                      icon: index == 0
                          ? icTopCategories
                          : index == 1
                              ? icBrands
                              : icTopSeller,
                      title: index == 0
                          ? topCategories
                          : index == 1
                              ? brand
                              : topSeller,
                    )),
          ),
          //featured categories
          10.heightBox,
        ],
      )),
    );
  }
}
