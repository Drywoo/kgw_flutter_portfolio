import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/home/cache_home.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/indicator/cache_indicator_frame.dart';


Widget FoodList() {
  return Container(
    height: 123,
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color(0xff414040),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 63,
            height: 63,
            decoration: BoxDecoration(
              color: const Color(0xffA772FD),
              borderRadius: BorderRadius.circular(12),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/menu_book.png'),
              ],
            ),
          ),
          const Text('음식 리스트 보기',
          style: TextStyle(
            color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize: 13)),
          Image.asset('assets/images/arrow.png',width: 20,height: 20),
        ],
      ),
    ),
  );
}

Widget Today_Food_Banner(context) {
    return Stack(
      children: [
        _today_Food_Slider(),
      Positioned(
        bottom: 20,
        right: 10,
        child: GestureDetector(
          onTap: () {
            onAlertPressed(context);
          },
          child: const Text(
            '방금 본 음식 먹으러 가기 →',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ), 
      ],
    );
}

Widget _today_Food_Slider() {
  return CarouselSlider(
   items: [
    ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset('assets/images/food_chicken.jpg',width: 380,fit: BoxFit.fill),
    ),
    ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset('assets/images/food_hambuger.jpg',width: 380,fit: BoxFit.fill),
    ),
    ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset('assets/images/food_pizza.jpg',width: 380,fit: BoxFit.fill),
    ),
    ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset('assets/images/food_steak.jpg',width: 380,fit: BoxFit.fill),
    ),
    ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Image.asset('assets/images/food_sushi.jpg',width: 380,fit: BoxFit.fill),
    ),
   ],
   options: CarouselOptions(
    height: 134,
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 10),
    autoPlayAnimationDuration: Duration(seconds: 5),
    viewportFraction: 1,
));
}

Widget Recommend_Button_Area(context) {
  return SizedBox(
  width: double.infinity,
  height: 160,
  child: Row(
    children: [
      OneTouch_Recommend_Button(),
      const SizedBox(width: 30),
      Detailed_Recommend_Button(context),
    ],
  )
  );
}

Widget OneTouch_Recommend_Button() {
  return InkWell(
    onTap: () {
    Get.toNamed('/Cache/Indicator');
  },
  child: Container(
    height: 173,
    width:  173,
    // Support auto-layout later
    // 오토레이아웃 따로 지정해주기
    decoration: BoxDecoration(
    color: const Color(0xffA772FD), 
    borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/restaurant.png'),
          const SizedBox(height: 5),
          const Text(
            '원터치 추천받기',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          )
        ],
      ),
    ),
  )
  );
}

Widget Detailed_Recommend_Button(context) {
  return InkWell(
    onTap: () {
      onAlertPressed(context);
    },
    child: Container(
    height: 173,
    width: 173,
    decoration: BoxDecoration(
    color: const Color(0xffA772FD), 
    borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/search.png'),
          const SizedBox(height: 5),
          const Text(
            '정밀 추천받기',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          )
        ],
      ),
    ),
  )
  );
}
Widget learnFoodInfo() {
  return Container(
    height: 123,
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color(0xff414040),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 63,
            height: 63,
            decoration: BoxDecoration(
              color: const Color(0xffA772FD),
              borderRadius: BorderRadius.circular(12),
            ),
            child:GestureDetector(
              onTap: () {
                print('안녕');
              },
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/receipt.png'),
              ],
            ),
          ),
          ),
          const Text('음식 정보 알아보기',
          style: TextStyle(
            color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize: 13)),
          Image.asset('assets/images/arrow.png',width: 20,height: 20),
        ],
      ),
    ),
  );
}

Widget WelcomeText() {
  var mealTime = '점심';
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text('안녕하세요\n좋은 $mealTime시간입니다',
      style: const TextStyle(fontSize: 20, fontWeight:FontWeight.bold, color: Colors.white)),
      const Spacer(),
    ],
  );
}
