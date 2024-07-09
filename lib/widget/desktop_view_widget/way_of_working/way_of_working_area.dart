import 'package:flutter/material.dart';

Widget way_of_working() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20),
      child: const Column(
        children: [
          SizedBox(height: 20),
          Text(
          'How I Work?',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold
          )),
          SizedBox(height: 20),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('● 팀원들과 소통하는것을 즐깁니다',
          style: TextStyle(fontSize: 20),),
          SizedBox(height: 10),
          Text('● 함께 정한 기간은 최대한 준수할수있도록 노력합니다',
          style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text('● 목표 달성을 최우선으로 중요시합니다',
          style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text('● 혼자 성장하는것보다 팀원들과 함께 성장해 나아가는것을 좋아합니다',
          style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
            ]
          ),
        ],
      )
    );
  }