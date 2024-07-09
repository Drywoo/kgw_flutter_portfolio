import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

Widget ReEdHomeScreen(BuildContext context) {
    return Column(
    children: [
      Expanded(
        child: SizedBox(
        width: 400,
        height: 400,
        child: DeviceFrame(
            device: Devices.ios.iPhone13ProMax,
            screen: Scaffold(
              backgroundColor: Colors.black,
              body: SafeArea(
                  child: Container(
                padding: const EdgeInsets.only(left: 26, right: 26),
                child: const Center(
                  child: Text('스위프트 프로젝트는 웹상에서 미리보기가 불가능합니다',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                )
              )),
            ),
          ),
        ),
      ),
    ],
  );
}