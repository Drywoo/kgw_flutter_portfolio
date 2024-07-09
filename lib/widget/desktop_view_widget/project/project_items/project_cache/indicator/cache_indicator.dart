import 'dart:async';
import 'dart:math';

import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/recommend/cache_recommend_food_component.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/recommend/cache_recommend_frame.dart';

class cache_Recommend_Indicator extends StatelessWidget {
const cache_Recommend_Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    waitTimer();
    return DeviceFrame(
      device: Devices.ios.iPhone13ProMax,
      screen: const SafeArea(
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('오늘의 점심을 추천중이에요\n잠시만 기다려주세요',
            style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
            SizedBox(height: 10),
            CircularProgressIndicator(),
          ],
        )),
      )
    );
  }
}

void waitTimer() {
List number=['치킨','피자','햄버거','스시','스테이크'];
String randomFood = (number.toList()..shuffle()).first;
  Timer(const Duration(seconds: 2), () => Get.toNamed(
    '/Cache/Recommand',
    arguments: randomFood,
    )
  );
  // Specify return time arbitrarily because the server does not exist
  // 서버 반환값이 없어 임의 지정해놓음 
}