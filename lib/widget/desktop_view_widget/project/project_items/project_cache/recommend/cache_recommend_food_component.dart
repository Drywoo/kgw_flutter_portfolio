
import 'dart:js';

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/home/cache_home.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/home/cache_home_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/indicator/cache_indicator.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/indicator/cache_indicator_frame.dart';

class TodayFoodInfo extends StatelessWidget {
  const TodayFoodInfo({super.key});
  
  @override
  Widget build(BuildContext context) {
    final food_name = Get.arguments;
    // 어규먼트는 추후 뷰모델에서 가져올 예정
    
    Image food_image = Image.asset('');

  if (food_name == '치킨') {
    food_image = Image.asset('assets/images/food_chicken.jpg',fit: BoxFit.fill);
  } else if (food_name == '피자') {
    food_image = Image.asset('assets/images/food_pizza.jpg',fit: BoxFit.fill);
  } else if (food_name == '스테이크'){
    food_image = Image.asset('assets/images/food_steak.jpg',fit: BoxFit.fill);
  } else if (food_name == '스시') {
    food_image = Image.asset('assets/images/food_sushi.jpg',fit: BoxFit.fill);
  } else if (food_name == '햄버거') {
    food_image = Image.asset('assets/images/food_hambuger.jpg',fit: BoxFit.fill);
}
  // inserted a test Login. If the server is manufactured, please erase this logic
  // MARK: 서버가 개발되면 삭제될 로직
    return DeviceFrame(device: Devices.ios.iPhone13ProMax, 
    screen: Scaffold(
      backgroundColor: Color(0xff2E2E2E),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
          child: Center(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _cancel_button(),
              _recommend_food_text(food_name),
              const SizedBox(height: 50),
              _recommand_food_image(food_image),
              const Spacer(),
              _onceRecommend_button(),
              _wantShowFoodDetailButton(),
            ],
          ),
        ),
      ),
      )
    )
    );
  }

  Widget _cancel_button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
          Get.toNamed('/Cache');
        }, icon: Icon(Icons.cancel))
      ],
    );
  }

  Widget _recommend_food_text(food_name) {
    return Column(
      children: [
        const Text('오늘의 점심은 ',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        RichText(
          text: TextSpan(children: [
            TextSpan(
              text: food_name,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffA772FD)),
            ),
            const TextSpan(
              text: ' 어떠신가요?',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ]),
        ),
      ],
    );
  }

  Widget _recommand_food_image(food_image) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20),
      height: 170,
      width: double.infinity,
      child: food_image,
    );
  }

  Widget _onceRecommend_button() {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed('/Cache/Indicator');
    }, 
    style: ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 40),
      backgroundColor: Color(0xffA772FD),
    ),
    child: Text('한번 더 추천해주세요', style: TextStyle(color: Colors.black)));
  }

  Widget _wantShowFoodDetailButton() {
    return ElevatedButton(
      onPressed: () {
       onAlertPressed(context);
      }, 
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 40),
        backgroundColor: Color(0xffA772FD),
      ),
    
      child: Text('음식정보 보러가기', style: TextStyle(color: Colors.black))
    );
  }
}



