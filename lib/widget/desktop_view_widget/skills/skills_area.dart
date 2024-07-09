import 'package:flutter/material.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/util/divide_line.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/skills/skills_item.dart';

Widget skills() {
  return const Column(
    children: [
      SizedBox(height: 25),
      Text('Skills',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
      SizedBox(height: 25),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SkillsItem(
          skillText: 'Kotlin',
          imagePath: 'assets/images/kotlin_logo.png',
          description1: '플러터에서 필요한 안드로이드 지식을 가지고 있습니다',
          description2: '간단한 레이아웃을 xml로 구현할수있습니다', 
          skillProficiency: '하'),
          SizedBox(width: 30),
          SkillsItem(
            skillText: 'Flutter', 
            imagePath: 'assets/images/flutter_logo.png', 
            description1: '디자이너가 요구하는 대부분의 레이아웃을 만들어낼수있습니다', 
            description2: '서버에서 요구하는 양식에 맞춰 통신을 진행할수있습니다', 
            skillProficiency: '중'),
          SizedBox(width: 30),
          SkillsItem(
            skillText: 'Swift', 
            imagePath: 'assets/images/swift_logo.png', 
            description1: 'UIKit 코드베이스로 토이 프로젝트를 진행했던 경험이 있습니다',
            description2: 'iOS 네이티브 관련 이슈를 잘 알고있습니다', 
            skillProficiency: '하'),
        ],
      ),
      SizedBox(height: 50),
    ],
  );
}