import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/home/cache_home.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/home/components/ReusableButton.dart';

Widget LiftHomeScreen(BuildContext context) {
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
                  child: Container(
                padding: const EdgeInsets.only(left: 26, right: 26),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    _liftLogoImg(context),
                    _liftTitle(),
                    _liftIntro(context),
                    const Spacer(),
                    const LiftLoginButton(),
                  ],
                ),
              )),
            ),
          ),
        ),
      ),
    ],
  );
}

_liftLogoImg(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(right: 20),
    alignment: Alignment.centerRight,
    child: Image(
      image: const AssetImage('assets/images/Lift_introImg.png'),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.height * 0.2,
    ),
  );
}

Widget _liftTitle() {

  return Container(
    padding: const EdgeInsets.fromLTRB(20, 40, 0, 10),
    alignment: Alignment.centerLeft,
    child: const Column(
      children: [
        Text(
          "LIFT",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 40,
              fontFamily: 'NanumGothicBold',
              color: Color(0xff4F60FE)),
        )
      ],
    ),
  );
}

_liftIntro(BuildContext context) {
  return Container(
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      child: const Text(
        "업무와 연관된 다양한 사람들을 만나고\n새로운 기회를 발견하고 성장의 문을 열어주세요.\n지금 바로 시작해보세요!",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 15,
            color: Color(0xff9B9B9B),
            fontFamily: 'NanumGothic'),
      ));
}

class LiftLoginButton extends StatelessWidget {
  const LiftLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 40),
      child: const Column(
        children: [
         SignupButtonWidget(),
         SizedBox(height: 10),
         SigninButtonWidget(),
        ],
      ),
    );
  }
}

class SignupButtonWidget extends StatelessWidget {

  const SignupButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return ReusableButton(
      text: "회원가입",
      width: double.infinity,
      height: 50,
      style: TextButton.styleFrom(backgroundColor: const Color(0xff4F60FE)),
      textStyle: const TextStyle(
          fontSize: 15, color: Colors.white, fontFamily: 'NanumGothic'),
      onPressed: () {
        onAlertPressed(context);
      },
    );
  }
}

class SigninButtonWidget extends StatelessWidget {

  const SigninButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return ReusableButton(
      text: "LIFT 회원입니다",
      width: double.infinity,
      height: 50,
      style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Color(0xff4F60FE), width: 1.0)),
      textStyle: const TextStyle(
          fontSize: 15,
          color: Color(0xff4F60FE),
          fontFamily: 'NanumGothic'),
      onPressed:() {
        Get.toNamed(
          '/lift/SignIn',
        );
      } ,

    );
  }
}