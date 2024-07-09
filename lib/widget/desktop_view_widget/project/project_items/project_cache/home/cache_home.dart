
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/home/cache_home_component.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Widget cacheHomeScreen(BuildContext context) {
  return Column(
    children: [
      Expanded(
        child: SizedBox(
        width: 400,
        height: 400,
        child: DeviceFrame(
            device: Devices.ios.iPhone13ProMax,
            screen: Scaffold(
              backgroundColor: const Color(0xff2e2e2e),
              body: SafeArea(
                  child: Container(
                padding: const EdgeInsets.only(left: 26, right: 26),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const MenuBar(),
                    const SizedBox(height: 20),
                    WelcomeText(),
                    const SizedBox(height: 20),
                    Today_Food_Banner(context),
                    const SizedBox(height: 20),
                    Recommend_Button_Area(context),
                    const SizedBox(height: 20),
                    FoodList(),
                    const SizedBox(height: 20),
                    learnFoodInfo(),
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

class MenuBar extends StatelessWidget {
  const MenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      GestureDetector(
        onTap: () {
          onAlertPressed(context);
        },
        child: Image.asset('assets/images/burgerMenu.png'),
      ),
      const Spacer()
    ]);
  }
}

onAlertPressed(context) {
  Alert(context: context, title: "웹에서는 미구현된 기능입니다", desc: "실제 프로젝트에는 구현되어있습니다")
      .show();
}
