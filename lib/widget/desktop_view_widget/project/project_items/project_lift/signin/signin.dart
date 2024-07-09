import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/hire/hire_home.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/hire/hire_home_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/home/components/ReusableButton.dart';

Widget LiftSignInScreen(BuildContext context) {
    return Column(
    children: [
      Expanded(
        child: SizedBox(
        width: 400,
        height: 400,
        child: DeviceFrame(
            device: Devices.ios.iPhone13ProMax,
            screen: Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                  child: Column(
                    children: [
                    _SignInText(),
                   const SizedBox(height: 15),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _InputEmailTextField(),
                      const SizedBox(height: 10),
                      _InputPasswordTextField(),
                      const SizedBox(height: 20),
                      _SignInButton()
                    ],),],),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

  Widget _InputEmailTextField() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '이메일',
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'NanumGothic',
                color: Color(0xff9B9B9B)),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 2),
          InputEmailWidget(),
          SizedBox(height: 2),
        ],
      ),
    );
  }

  Widget _InputPasswordTextField() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '비밀번호',
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'NanumGothic',
                color: Color(0xff9B9B9B)),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 2),
          InputPasswordWidget(),
          SizedBox(height: 2),
        ],
      ),
    );
  }

  Widget _SignInText() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('이메일 로그인',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NanumGothicBold',
                  fontSize: 30),
              textAlign: TextAlign.left),
        ],
      ),
    );
  }


  Widget _SignInButton() {
    return InkWell(
      onTap: () {
        Get.toNamed('/lift/home');
      },
      child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ReusableButton(
            text: "로그인",
            width: double.infinity,
            height: 55,
            style: TextButton.styleFrom(
                backgroundColor: Color(0xff4F60FE),
                side: const BorderSide(color: Color(0xff4F60FE), width: 1.0)),
            textStyle: const TextStyle(
                fontSize: 15, color: Colors.white, fontFamily: 'NanumGothic'),
          ),
      ),
    );
  }

class InputPasswordWidget extends StatelessWidget {
  const InputPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xff4F60FE),
          width: 2.0,
        ),
      ),
      padding: const EdgeInsets.all(13),
      child: Center(
          child: SizedBox(
        child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('*********',
                    speed: const Duration(milliseconds: 100),),
                  ],
                  totalRepeatCount: 1,
                ),
              ],
         )),
      )),
    );
  }
}

class InputEmailWidget extends StatelessWidget {
  const InputEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xff4F60FE),
          width: 2.0,
        ),
      ),
      padding: const EdgeInsets.all(13),
      child: Center(
          child: SizedBox(
        child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('kgw060220@gmail.com'),
                  ],
                  totalRepeatCount: 1,
                ),
              ],
            )),
      )),
    );
  }
}
