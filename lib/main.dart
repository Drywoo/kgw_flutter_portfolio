import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kgw_flutter_portfolio/responsiveLayout.dart';
import 'package:kgw_flutter_portfolio/screens/desktop_view.dart';
import 'package:kgw_flutter_portfolio/screens/mobile_view.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_ReEd/home/ReEd_home_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/home/cache_home_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/indicator/cache_indicator_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_cache/recommend/cache_recommend_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/hire/hire_home_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/home/lift_home_frame.dart';
import 'package:kgw_flutter_portfolio/widget/desktop_view_widget/project/project_items/project_lift/signin/signin_frame.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const ResponsiveLayout(
            mobileView: MobileView(),
            desktopView: DesktopView(),
          ),
        ),
        GetPage(
          name: '/ReEd',
          page: () => const ReEdHomeScreenFrame(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/Cache',
          page: () => const CacheHomeScreenFrame(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/Cache/Indicator',
          page: () => const CacheIndicatorFrame(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/Cache/Recommand',
          page: () => const CacheRecommendScreenFrame(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/lift',
          page: () => const LiftHomeScreenFrame(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/lift/SignIn',
          page: () => const LiftSignInScreenFrame(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/lift/home',
          page: () => const LiftHireScreenFrame(),
          transition: Transition.noTransition,
        ),
      ],
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 243, 243, 243),
        textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'BM_Jua'), // 기본 제목 텍스트
          headlineMedium: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'BM_Jua'), // 기본 헤더 텍스트 
          bodyMedium: TextStyle(color: Colors.black, fontSize: 20, fontFamily: 'BM_Jua'), // 기본 본문 텍스트
        ),
      ),
    );
  }
}
