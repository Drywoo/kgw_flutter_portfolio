import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_item_structure.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_ReEd/home/ReEd_home_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/home/cache_home_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/home/lift_home_frame.dart';

Widget projectArea() {
  return Column(
    children: [
      const SizedBox(height: 25),
      const Text('Projects',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
      const Text('(자세히 보시려면 프로젝트 카드를 클릭해주세요)',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      const SizedBox(height: 25),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
               Get.toNamed('/Cache');
            },
          child: const ProjectItem(
            projectName: 'Cache',
            imagePath: 'assets/images/cache_logo.png',
            description1: 'AI 기반 영양정보 제공 및 식사 메뉴 추천 프로젝트',
            description2: '기간: 2024.3 ~ 2024.7',
            useSkill: 'GetX, Dio, Mvvm',
            bannerColor: Colors.blue,
            bannerText: 'Flutter',
          )),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              Get.toNamed('/lift');
            },
            child: const ProjectItem(
            projectName: 'lift',
            imagePath: 'assets/images/lift_logo.png',
            description1: '구직자와 회사를 연결해주는 프로젝트',
            description2: '기간: 2024.3 ~ 2024.6',
            useSkill: 'GetX, Dio, Mvvm',
            bannerColor: Colors.blue,
            bannerText: 'Flutter',
          )),
          const SizedBox(width: 20),
          GestureDetector(
            onTap:() {
              Get.toNamed('/ReEd');
            },
            child: const ProjectItem(
            projectName: 'ReEd',
            imagePath: 'assets/images/ReEd_Logo.png',
            description1: '학원과 학생의 일정 연결 및 출석 프로젝트',
            description2: '기간: 2023.3 ~ 2023.11',
            useSkill: 'GetX, Dio, Mvvm',
            bannerColor: Color(0xffeb593c),
            bannerText: 'Swift',
          )),
        ],
      ),
      const SizedBox(height: 50),
    ],
  );
}
